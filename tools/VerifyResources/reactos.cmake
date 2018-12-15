remove_definitions(-D_WIN32_WINNT=0x502)
add_definitions(-D_WIN32_WINNT=0x600)

set_cpp(WITH_RUNTIME WITH_EXCEPTIONS WITH_STL)

if(NOT MSVC)
    # HACK: this should be enabled globally!
    add_compile_flags_language("-std=c++11" "CXX")
endif()

list(APPEND SOURCE
    FileSignatureInfo.cpp
    VerifySignature.cpp)
