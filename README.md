<a name="unishellect"></a>

# UniShellect

---

This version is now abandoned in favor of the new version [UniShellect V2](https://github.com/Lateralus138/unishellectv2).

I will keep this here, but no support will be provided.

---

|`Build`|`Status`|
|---:|:---|
![Under Construction](https://img.shields.io/static/v1?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAB11BMVEUAAAA9U2GDnayLpraOqLeQqbiRqriPqLaPqLaRqriDnaw9U2Fid4SKp7iKp7hid4RfdYGHpbdYbnuCorRSaHV9nrFMYm93ma1HXGlwlKlwlKlBV2NojqQ7UV1hiKA2S1hYgpswRlJQfJcwRlIkMjlDbIVMfJpNfptOfptNfZpRfplTf5lMfJlOfptNfptDbIUkMjkHAAAuR1YzUWMzUWMzUmM0UmQzUWMyUWM0UmQzUmMzUWMzUWMuR1YHAACNsMWRs8aXt8mbuMm3ydSbuMmRs8aIrsONscWStMeZtsfk6u3k6u2ZtseStMeIrsOGrMKKr8SMr8Oswc3u8PHu8PGswc6Mr8OCqcCFrMKJrsOTssTT3OLS3OKTssSJrsOCqcB9pr5/p7+CqcCApryYs8Sdt8aApryCqb9/p799pr52obp4o7x9o7qswc7F09vO2eCwxNCCp7x4ort2obpvnLdxnbd9orjK1t3T3OLK1t7Y4OSFp7twnLZvnbdomLRolrKTsMHb4eWju8mRrsDd4+aiushplrJomLRhkrBik7Bmkq25ydLY3uLW3eHI09ptl69hkrBhkrBZjq1bj65ej613nbSRrr+etsV3nbRika1bjq5Zjq3///97NWaUAAAAP3RSTlMAAlOMioqKioqKUwIMwcEMDsQOxA7EDsQOxMQOxA7EDsQOxA4Lq/Lv7+/v7+/v76sLASI+Pj4+Pj4+Pj4+IgH2SccMAAAAAWJLR0SccbzCJwAAAAd0SU1FB+QIGBYnM5liyzQAAADPSURBVAjXY2BABYxMzCysbOwcnKwszFzcDDy89g6OTs7OLo6u9nz8DAKCbu4enl7ePr7ufoICDELC/gGBQcEhoWEB/sJCDCKi4RGRUdExsXER8aIiDGLiCYlJySmpaekZmeJiDBKSWdk5uXn5BYVFxVISDNIyJaVl5RWVVdU1tTLSDLJydfUNjU3NLa1t7XKyDPIKHZ1d3T29ff0TJirIMygqTZo8Zeq06TNmzpqtpMygoqqmrqGppa2jq6emb8BgaGRsYmpmbmFpZW1jawcAIDgy9UQeYeoAAAAldEVYdGRhdGU6Y3JlYXRlADIwMjAtMDgtMjRUMjI6Mzk6NTEtMDQ6MDBWWeqAAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDIwLTA4LTI0VDIyOjM5OjUxLTA0OjAwJwRSPAAAAABJRU5ErkJggg==&label=AppImage&message=Status&color=b91d47)|![AppImage Build Status](https://img.shields.io/github/workflow/status/Lateralus138/UniShellect/AppImage%20Build)

<a class="twitter-share-button"
  href="https://twitter.com/share?ref_src=twsrc%5Etfw&text=%27UniShellect%27%20-%20Create%20command%20line%20menus%20of%20commands%20or%20files%20from%20a%20default%20or%20external%20JSON%20config%20file%2Fs.%0A%23Programming%20%23Coding%20%23Windows%20%23Linux%20via%20%40thefluxapex%0A">![Twitter URL](https://img.shields.io/twitter/url?url=https%3A%2F%2Fgithub.com%2FLateralus138%2FUniShellect&label=Tweet%20This%20Project&style=for-the-badge&labelColor=292f33&color=55acee&logo=twitter)</a>

---

## News

### New Version

`Wed 07 Sep 2022 08:49:35 PM UTC`

The new version is now avalable [***here***](https://github.com/Lateralus138/unishellectv2).

### New Version Information

`Tue 06 Sep 2022 05:34:50 PM UTC`

The new version is finished and will be released officially very soon as I'm currently working on the new repository. For now there are stable pre-released builds there, but they are not official yet. You can find the new project [***here***](https://github.com/Lateralus138/unishellectv2).

### Coming Soon

`Sun 25 Apr 2021 03:00:53 PM CDT`

This program works fine as is, but my *JSON* structure is nonsense and I want to re-write this in *C++* and *Rust* (maybe) and so I plan to do so at some point this year.

Re-writes in both *C++* and *Rust* adding better cross-platform capability with plans to add the ability to add and remove items from the configuration file via the command line (*switches* and *arguments*).

## Table of Contents
1. [News](#news)
   1. [New Version](#new-version)
   2. [New Version Information](#new-version-information)
   3. [Coming Soon](#coming-soon)
2. [Table of Contents](#table-of-contents)
3. [About This Project](#about-this-project)
4. [Motivation](#motivation)
5. [Usage](#usage)
   1. [Command Line](#command-line)
      1. [Linux Permissions](#linux-permissions)
      2. [Help Message](#help-message)
   2. [Configuration](#configuration)
      1. [Example Configs](#example-configs)
         1. [Example Config - Linux](#example-config---linux)
         2. [Example Config - Windows](#example-config---windows)
6. [Files](#files)
   1. [Linux Files](#linux-files)
   2. [Windows Files](#windows-files)
   3. [Continuous Build](#continuous-build)
7. [Project Links](#project-links)
8. [Media](#media)
   1. [Icon](#icon)
   2. [Help Message](#help-message-1)
   3. [Demo](#demo)
9. [Support Me If You Like](#support-me-if-you-like)
10. [License](#license)
11. [Project Information](#project-information)
    1. [Overall Status](#overall-status)
    2. [Latest Version Status](#latest-version-status)

## About This Project

This tool parses a JSON config file and loads a highly customizable menu of shells, interpreters, files, commands and possible arguments into any command line interface.

Various config files can be loaded and this can be great for laoding various menus based on various criteria:
E.g. project menus, work menus, game menus etc...


This is a *cross-platform* `FOSS` project. 

## Motivation

I work and play in all sorts of command line environments in both *Windows* and *Linux* and this helps me organize and navigate that world more effeciently and smoothly.

This is inspired by the `hyper-shellect` plug-in for the `Hyper` terminal which is dependent on `node.js`.

## Usage

### Command Line

This is a command line tool built for use in many different types of shells and terminals in *Windows* and *Linux*. It is meant to be a universal alternative to `hyper-shellect` with additional features (loading different configs, passing arguments, and error handling).

Use any way you can use any other command line tool/executable: from a command line or other executable program or script.

#### Linux Permissions

In `Windows` you can just double click to open in cmd or run in a command line, but in `Linux` you might need to set the programs permissions to executable:


> Make executable for yourself:

```Bash
 $ chmod u+x /path/to/unishellect
```

or: 

> Make executable for for everyone:

```Bash
 $ chmod 755 /path/to/unishellect-x86_64.AppImage
```

or:

```Bash
 $ chmod a+x /path/to/unishellect
```

#### Help Message

```Bash
 $ unishellect --help
                                                  
 USAGE: unishellect [OPTIONS [CONFIG_FILE]...]... 
 Load a menu of shells/files from any CLI...      
                                                  
 OPTIONS:                                         
     -h,--help    This help message.              
     -c,--config  Load an alternate config file.  
     -s,--supress Supress errors.                 
                                                  
 CONFIG_FILE: unishellect -c "/path/to/file.json" 
 Load an alternate config file.                   
 The default config file: "unishellect.json"      
 should be created in the user's HOME             
 directory.                                       
                                                  
 ERRORS:                                          
     0            No errors.                      
     1            Passed config file does not     
                  exist.                          
     2            Could not create config         
                  Directory.                      
     3            Could not create default        
                  config file.                    
     4            Not items found in the config   
                  file.                           
     5            A key was not found in config.  
     6            Error running command.          
                                           
```

### Configuration

The default `JSON` configuration file: `unishellect.json` will be created in the corresponding `%AppData%\UniShellect\` or `.config/UniShellect/` directory in `Windows` and `Linux` respectively on first run if no `-c` option has been passed with an alternate configuration file.

By default the configuration file is empty and you must add your own options.

|Operating System|Default Config Path|
|:---:|:---:|
|Windows|`%AppData%\UniShellect\unishellect.json`|
|Linux|`$HOME/.config/UniShellect/unishellect.json`|

#### Example Configs

##### Example Config - Linux

```JSON
 {
     "Shells": {
        "1": {
            "Title":"Python 3",
            "Path":"python3",
            "Args":"-q",
        },
        "2": {
            "Title":"GNU Screen - Temp",
            "Path":"screen",
            "Args":"-S Temp",
        },
        "3": {
            "Title":"Edit this menu",
            "Path":"vim",
            "Args":"${HOME}/.config/UniShellect/unishellect.json",
        }
    }
 }
```

##### Example Config - Windows

```JSON
 {
     "Shells": {
        "1": {
            "Title":"Python 3",
            "Path":"python3",
            "Args":"-q",
        },
        "2": {
            "Title":"PowerCore",
            "Path":"C:\\Program Files\\PowerCore\\7.0\\pwsh.exe",
            "Args":"-NoLogo",
        },
        "3": {
            "Title":"Edit this menu",
            "Path":"vim",
            "Args":"%AppData%\\UniShellect\\unishellect.json",
        }
    }
 }
```

## Files

|File|Description|
|:---:|:---:|
|[Source Files - All](archives/source_unishellect_all.7z)|Complete project - no compilations.|

### Linux Files

|File|Description|
|:---:|:---:|
|[Source Files](archives/source_unishellect_linux.7z)|Linux source - no compilations.|
|[Compiled](dist/linux/bin/unishellect)|Compiled binary executable with no dependencies.|
|[AppImage](dist/linux/appimage/unishellect-x86_64.AppImage)|Single executable with all dependencies.|

### Windows Files

|File|Description|
|:---:|:---:|
|[Source Files](archives/source_unishellect_windows.7z)|Windows source - no compilations.|
|[Compiled](dist/windows/bin/unishellect.exe)|Compiled binary executable with no dependencies.|

### Continuous Build

The current released compiled binary executables. These should correlate to the above compilations, but just in case these are the "official" current releases.

|File|Description|
|:---:|:---:|
|[Linux - EXE](https://github.com/Lateralus138/UniShellect/releases/download/Continuous/unishellect)|Linux source - no compilations.|
|[Linux - AppImage](https://github.com/Lateralus138/UniShellect/releases/download/Continuous/unishellect-x86_64.AppImage)|Packaged `AppImage` with all dependencies.|
|[Windows - EXE](https://github.com/Lateralus138/UniShellect/releases/download/Continuous/unishellect.exe)|Single executable with all dependencies.|

## Project Links

|Link|Description|
|:--:|:--:|
|[Official Project Page](https://lateralus138.github.io/UniShellect)|The themed version of this page.|
|[Project Page](https://github.com/Lateralus138/UniShellect/)|This repository page.|
|[Current Releases](https://github.com/Lateralus138/UniShellect/releases/tag/Continuous)|The release files in "Continuous Build".|

## Media

### Icon

![Icon](media/icon/unishellect.png)

### Help Message

![Help Message](media/help.png)

### Demo

![Demo](media/demo.png)

---

## Support Me If You Like

If you like this project and care to donate to my ***PayPal***:

[![PayPal Donation](docs/media/images/paypal_donate_button.png)](https://paypal.me/ianapride?locale.x=en_US)

Or ***Buy Me A Coffee*** if your prefer:

[![Buy Me A Coffee](./docs/media/images/buymeacoffe_a.png)](https://www.buymeacoffee.com/ianalanpride)

---

## [License](./LICENSE)

>This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

>This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

## Project Information

![]()

### Overall Status

![Readme Card](https://github-readme-stats.vercel.app/api/pin/?username=Lateralus138&repo=UniShellect)

|Description|Status|
|:---:|:---:|
|Project Release Date|![GitHub Release Date](https://img.shields.io/github/release-date/Lateralus138/UniShellect?style=for-the-badge)|
|Total downloads for this project|![GitHub all releases](https://img.shields.io/github/downloads/Lateralus138/UniShellect/total?style=for-the-badge)|
|Complete repository size|![This Repo Size](https://img.shields.io/github/repo-size/Lateralus138/UniShellect?style=for-the-badge)|
|Commits in last month|![GitHub commit activity](https://img.shields.io/github/commit-activity/m/Lateralus138/UniShellect?style=for-the-badge)|
|Commits in last year|![GitHub commit activity](https://img.shields.io/github/commit-activity/y/Lateralus138/UniShellect?style=for-the-badge)|

### Latest Version Status

|Description|Status|Number of Downloads|
|:---:|:---:|:---:|
|Latest Release version|![Release Version](https://img.shields.io/github/v/release/Lateralus138/UniShellect?style=for-the-badge)|![GitHub release (latest by date)](https://img.shields.io/github/downloads/Lateralus138/UniShellect/Continuous/total?style=for-the-badge)|
|Latest Tag version, possible Pre-Release's|![Tag Version](https://img.shields.io/github/v/tag/Lateralus138/UniShellect?style=for-the-badge)|![GitHub release (latest by date)](https://img.shields.io/github/downloads/Lateralus138/UniShellect/Continuous/total?style=for-the-badge)|
