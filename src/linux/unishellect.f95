! This is 
program main
	use fson
	use fson_value_m, only: fson_value_count, fson_value_get
	use function_m, only: is_int, to_upper, get_operating_system, get_error_number
	implicit none
	character(len=:), allocatable :: titlestr,command,warnmsg,chosen, &
		argstr,conffile,envname,initdir,confdir,appdir,osname,mkdircom
	character(len=1024) :: thispath, thisargs, thistitle
	character(len=50) :: space = '                                                  '
	character(len=20) :: inttostr,strtoint,input
	character(len=1) :: thischar,ossep
	integer :: index,shellcount = 0,inputindex,numindex,warnlen, &
		chosenlen,argcount,argindex,openstat = -1,closestat = -1, errnum,mkdirstat,comstat
	logical :: isint = .false.,isopt = .false.,confexist = .false., &
		supress = .false.,confdirexist = .false.
	type(fson_value), pointer :: json_data, item, shells, one
	argcount = command_argument_count()
	osname = get_operating_system()
	if (argcount .gt. 0) then
		allocate(character(len=255) :: argstr)
		do argindex=1, argcount
			call get_command_argument(argindex,argstr)
			if (to_upper(trim(argstr)) .eq. '--SUPRESS' .or. &
				to_upper(trim(argstr)) .eq. '-S') then
				supress = .true.
			end if
			if (to_upper(trim(argstr)) .eq. '--HELP' .or. &
				to_upper(trim(argstr)) .eq. '-H') then
				print '(a)', space
				print '(a)', space(1:1)//'USAGE: unishellect [OPTIONS [CONFIG_FILE]...]...'//space(50:)
				print '(a)', space(1:1)//'Load a menu of shells/files from any CLI...'//space(45:)
				print '(a)', space
				print '(a)', space(1:1)//'OPTIONS:'//space(10:)
				print '(a)', space(1:1)//'    -h,--help    This help message.'//space(37:)
				print '(a)', space(1:1)//'    -c,--config  Load an alternate config file.'//space(49:)
				print '(a)', space(1:1)//'    -s,--supress Supress errors.'//space(34:)
				print '(a)', space
				print '(a)', space(1:1)//'CONFIG_FILE: unishellect -c "/path/to/file.json"'//space(50:)
				print '(a)', space(1:1)//'Load an alternate config file.'//space(32:)
				print '(a)', space(1:1)//'The default config file: "unishellect.json"'//space(45:)
				print '(a)', space(1:1)//'should be created in the user'//"'"//'s HOME'//space(38:)
				print '(a)', space(1:1)//'directory.'//space(12:)
				print '(a)', space
				print '(a)', space(1:1)//'ERRORS:'//space(9:)
				print '(a)', space(1:1)//'    0            No errors.'//space(29:)
				print '(a)', space(1:1)//'    1            Passed config file does not'//space(46:)
				print '(a)', space(1:1)//'                 exist.'//space(25:)
				print '(a)', space(1:1)//'    2            Could not create config'//space(42:)
				print '(a)', space(1:1)//'                 Directory.'//space(29:)
				print '(a)', space(1:1)//'    3            Could not create default'//space(43:)
				print '(a)', space(1:1)//'                 config file.'//space(31:)
				print '(a)', space(1:1)//'    4            Not items found in the config'//space(48:)
				print '(a)', space(1:1)//'                 file.'//space(24:)
				print '(a)', space(1:1)//'    5            Error running command.'//space(41:)
				print '(a)', space
				call exit(0)
			end if
		end do
	end if
	if (argcount .gt. 0) then
		if (.not.(allocated(argstr))) allocate(character(len=255) :: argstr)
		do argindex=1, argcount
			call get_command_argument(argindex,argstr)
			if (to_upper(trim(argstr)) .eq. '--CONFIG' .or. &
				to_upper(trim(argstr)) .eq. '-C') then
				call get_command_argument(argindex + 1,argstr)
				inquire(file=trim(argstr),exist=confexist)
				errnum = get_error_number(supress,1)
				if (confexist .eqv. .false.) call exit(errnum)
				allocate(character(len=len_trim(argstr)) :: conffile)
				conffile = trim(argstr)
			end if	
		end do
	end if
	if (.not.(allocated(conffile))) then
		appdir = 'UniShellect'
		allocate(character(len=255) :: initdir,confdir)
		if (osname .eq. 'windows') then
			envname = 'APPDATA'
			ossep = '\'
		else
			envname = 'HOME'
			ossep = '/'
		end if
		call get_environment_variable(name=envname,value=initdir)
		if (osname .eq. 'windows') then
			confdir = trim(initdir)//ossep//trim(appdir)
		else
			confdir = trim(initdir)//ossep//'.config'//ossep//trim(appdir)
		end if
		inquire(file=confdir//ossep//'.',exist=confdirexist)
		if (confdirexist .eqv. .false.) then
			if (osname .eq. 'windows') then
				allocate(character(len=6) :: mkdircom)
				mkdircom = 'mkdir '
			else
				allocate(character(len=9) :: mkdircom)
				mkdircom = 'mkdir -p '
			end if
			call execute_command_line(command=mkdircom//'"'//confdir//'"',exitstat=mkdirstat)
			if (mkdirstat .gt. 0) then
				errnum = get_error_number(supress,2)
				call exit(errnum)
			end if
		end if
		conffile = trim(confdir)//ossep//'unishellect.json'
	end if
	inquire(file=conffile,exist=confexist)
	if (confexist .eqv. .false.) then
		open(1,file=conffile,status='new',action='write',iostat=openstat)
		write(1,*) '{'
		write(1,*) '    "Shells": {'
		write(1,*) '    }'
		write(1,*) '}'
		close(1,status='keep',iostat=closestat)
		errnum = get_error_number(supress,3)
		if ((openstat + closestat) .ne. 0) call exit(errnum)
	end if
	json_data => fson_parse(conffile)
	call fson_get(json_data,"Shells",shells)
	call fson_get(shells,"1",one)
	if (.not.(associated(one))) then
		print '(a)', space
		print '(a)', space(1:1)//'No items found in the config file.'//space(36:)
		print '(a)', space
		errnum = get_error_number(supress,4)
		call exit(errnum)
	end if
	print '(a)', space
	print '(a)', space(1:1)//TRIM("Choose an option:")//space(LEN("Choose an option:") + 2:)
	print '(a)', space(1:1)//'0: Exit'//space(9:)
	shellcount = fson_value_count(shells)
	write(strtoint,'(I0)') shellcount
	do index=1, shellcount
		write(inttostr,'(I0)') index
		item => fson_value_get(shells, index)
		call fson_get(item,"Title",thistitle)
		titlestr = trim(inttostr)//": "//trim(thistitle)
		print '(a)', space(1:1)//trim(titlestr)//space(len(titlestr) + 2:)
	end do
	print '(a)', space
	do while (isopt .eqv. .false.)
		do while (isint .eqv. .false.)
			read(*,*) input
			if (trim(input) == 'exit' .or. trim(input) == '0') then
				print '(a)', space
				print '(a)', space(1:1)//'User canceled.'//space(len('User canceled.') + 2:)
				print '(a)', space
				call exit(0)
			end if
			do inputindex=1, len(trim(input))
				thischar = trim(input(inputindex:1))
				isint = is_int(thischar)
			end do
			warnmsg = trim('Invalid option. Choose: [0-'//trim(strtoint)//'] or "exit":')
			warnlen = len(trim(warnmsg)) + 2
			if (isint .eqv. .false.) then
				print '(a)', space
				print '(a)', space(1:1)//trim(warnmsg)//space(warnlen:)
				print '(a)', space
			end if
		end do
		isint = .false.
		do numindex=1, shellcount
			write(inttostr,'(I0)') numindex
			if (trim(input) .eq. inttostr) then
				isopt = .true.
			end if
		end do
		warnmsg = trim('Invalid option. Choose: [0-'//trim(strtoint)//'] or "exit":')
		warnlen = len(trim(warnmsg)) + 2
		if (isopt .eqv. .false.) then
			print '(a)', space
			print '(a)', space(1:1)//trim(warnmsg)//space(warnlen:)
			print '(a)', space
		end if
	end do
	item => fson_value_get(shells,trim(input))
	call fson_get(item,"Title",thistitle)
	call fson_get(item,"Path",thispath)
	call fson_get(item,"Args",thisargs)
	chosen = 'You chose: '//trim(thistitle)
	chosenlen = len(trim(chosen)) + 2
	print '(a)', space
	print '(a)', space(1:1)//trim(chosen)//space(chosenlen:)
	print '(a)', space	
	call execute_command_line(trim('"'//trim(thispath)//'" ')//' '//trim(thisargs),exitstat=comstat)
	if (comstat .gt. 0) then
		errnum = get_error_number(supress,5)
		call exit(errnum)
	end if
end program main
