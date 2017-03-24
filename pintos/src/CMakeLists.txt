cmake_minimum_required(VERSION 3.6)
project(src)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")


include_directories(${PROJECT_SOURCE_DIR})
include_directories ("${PROJECT_SOURCE_DIR}/lib")
include_directories("${PROJECT_SOURCE_DIR}/lib/user")
include_directories("${PROJECT_SOURCE_DIR}/lib/kernel")


add_subdirectory(threads)
add_subdirectory(userprog)
add_subdirectory(devices)
add_subdirectory(lib)
add_subdirectory(lib/user)

#add_executable(src ${libs_SRCS})
#target_link_libraries (src lib)


