remove_definitions(-D_WIN32_WINNT=0x502)
add_definitions(-D_WIN32_WINNT=0x600)

set_cpp(WITH_RUNTIME WITH_EXCEPTIONS)

list(APPEND SOURCE
    src/dbg.c
    src/lfn.c
    src/lfnmisc.c
    src/numfmt.c
    src/suggest.c
    src/tbar.c
    src/treectl.c
    src/wfassoc.c
    src/wfchgnot.c
    src/wfcomman.c
    src/wfcopy.c
    src/wfdir.c
    src/wfdirrd.c
    src/wfdirsrc.c
    src/wfdlgs.c
    src/wfdlgs2.c
    src/wfdlgs3.c
    src/wfdos.c
    src/wfdrives.c
    src/wfdrop.c
    src/wfext.c
    src/wffile.c
    src/wfinfo.c
    src/wfinit.c
    src/wfloc.c
    src/wfmem.c
    src/wfprint.c
    src/wfsearch.c
    src/wftree.c
    src/wfutil.c
    src/winfile.c
    src/wnetcaps.c
    src/wfgoto.cpp)

file(GLOB winfile_rc_deps src/res/*.*)
add_rc_deps(src/res.rc ${winfile_rc_deps})
add_executable(winfile ${SOURCE} src/res.rc)
set_module_type(winfile win32gui UNICODE)
add_importlibs(winfile comctl32 user32 gdi32 ole32 shlwapi oleaut32 advapi32 version msvcrt kernel32)

add_cd_file(TARGET winfile DESTINATION reactos/system32 FOR all)