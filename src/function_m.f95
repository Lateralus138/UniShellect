module function_m
    implicit none
    private
    public :: is_int, to_upper, get_operating_system, get_error_number
contains
    function is_int(char) result(isint)
        logical :: isint
        character(len=1),intent(in) :: char
        select case (char)
            case ('0')
                isint =.true.
            case ('1')
                isint =.true.
            case ('2')
                isint =.true.
            case ('3')
                isint =.true.
            case ('4')
                isint =.true.
            case ('5')
                isint =.true.
            case ('6')
                isint =.true.
            case ('7')
                isint =.true.
            case ('8')
                isint =.true.
            case ('9')
                isint =.true.
            case default
                isint =.false.
        end select
    end function is_int
    function to_upper (str) result (string)
        ! implicit none
        character(*), intent(in) :: str
        character(len(str))      :: string
        integer :: ic, i
        character(26), parameter :: cap = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
        character(26), parameter :: low = 'abcdefghijklmnopqrstuvwxyz'
        string = str
        do i = 1, len_trim(str)
            ic = index(low, str(i:i))
            if (ic > 0) string(i:i) = cap(ic:ic)
        end do
    end function to_upper
    function get_operating_system() result(operating_system)
        character(len=:), allocatable :: operating_system,path
        allocate(character(len=2048) :: path)
        call get_environment_variable(name='PATH',value=path)
        if (scan(trim(path),';') .gt. 0) then
            operating_system = 'windows'
        else
            operating_system = 'linux'
        end if
    end function get_operating_system
    function get_error_number(supress,number) result(errnum)
        logical, intent(in) :: supress
        integer, intent(in) :: number
        integer :: errnum
        select case (supress)
            case (.true.)
                errnum = 0
            case default
                errnum = number
        end select 
    end function get_error_number
end module function_m