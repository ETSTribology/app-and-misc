# Polyfem
# License: MIT

if(TARGET polyfem::polyfem)
    return()
endif()

message(STATUS "Third-party: creating target 'polyfem::polyfem'")

include(FetchContent)
FetchContent_Declare(
    polyfem
    GIT_REPOSITORY https://github.com/polyfem/polyfem.git
    GIT_TAG a3ef30c246316e79ad0bc02514a0cf2772a58cbf
    GIT_SHALLOW FALSE
)
# Ensure USE_MKL is off for polysolve
add_definitions(-DUSE_MKL=OFF)
set(FETCHCONTENT_SOURCE_DIR_POLYFEM ${CMAKE_BINARY_DIR}/polyfem)
set(FETCHCONTENT_UPDATES_MKL OFF)

FetchContent_MakeAvailable(polyfem)

