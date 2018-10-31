# ![icon](winfile.png) WinFile+

This permanent fork of Microsoft's WinFile is designed to be an enhanced version of what Microsoft originally [provided](https://github.com/Microsoft/winfile). The layout should stay the same, but enhancements will be made to be friendlier for modern users.

## Building WinFile+

Right now, the program is being designed to be built in [ReactOS](https://reactos.org/) (Server 2003 or later), but it should be fairly easy to compile it elsewhere. There are no external libraries used (except for the ones that ship with Windows), and everything is compiled in C and Win32.

## History

The Windows File manager was originally released with Windows 3.0 in the early 1990s.  You can read more about the history at https://en.wikipedia.org/wiki/File_Manager_(Windows).

## Changes from Original

- **UNICODE Only**
    - This means that the program will only work for Windows NT 5.1 or later and not the older DOS versions of Windows (95/98/ME).
- **CMake Build System**
    - Makes it easier to build the project without having to update every single build system (MinGW, MSVC, etc.) with every commit.

## Contributing

Help is appreciated, however keep in mind that anything contributed here will not be sent back to the original project. And also keep in mind that Pull Requests will be taken on a case by case basis, so if a change is not what I want and you still want it, then you are more than free to fork this project for yourself.

## License

Copyright (c) Microsoft Corporation. All rights reserved.

Licensed under the [MIT](LICENSE) License.