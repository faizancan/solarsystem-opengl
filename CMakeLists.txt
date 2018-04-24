cmake_minimum_required( VERSION 2.6 )
project( SolarSystem )

set( CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/" )

include_directories(

        ${CMAKE_SOURCE_DIR}/glfw/include

        ${CMAKE_SOURCE_DIR}/glad/include)

set( SRC solarsystem.cpp )

add_subdirectory(${CMAKE_SOURCE_DIR}/glfw)

add_executable( SolarSystem ${SRC} glad.c)

target_link_libraries( SolarSystem ${LIBRARIES} glfw)
