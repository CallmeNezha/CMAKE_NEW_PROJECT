#//              ______    _____            _________       _____   _____
#//            /     /_  /    /            \___    /      /    /__/    /
#//           /        \/    /    ___        /    /      /            /    ___
#//          /     / \      /    /\__\      /    /___   /    ___     /    /   \
#//        _/____ /   \___ /    _\___     _/_______ / _/___ / _/___ /    _\___/\_
#//        created on 5/12/2017  all rights reserved by @NeZha

project( @PROJECT_NAME@ )
cmake_minimum_required( VERSION 3.5 )
set_property( GLOBAL PROPERTY USE_FOLDERS ON )

# software version
set( ${PROJECT_NAME}_VERSION_MAJOR 0 )
set( ${PROJECT_NAME}_VERSION_MINOR 1 )
set( ${PROJECT_NAME}_VERSION_PATCH 0 )

# C++11 support
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11" )

set( ROOT_DIR       ${CMAKE_CURRENT_SOURCE_DIR} )
set( TESTS_DIR      ${ROOT_DIR}/tests )
set( THIRDPARTY_DIR ${ROOT_DIR}/thirdparty )

set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib )

set( @PROJECT_DIR@ ${ROOT_DIR}/@PROJECT_DIR@ CACHE PATH "@PROJECT_DIR@ directory." )
set( DOC_DIR      ${ROOT_DIR}/doc      CACHE PATH "Document directory." )

# options
option( BUILD_TESTS     "Build unit tests."       ON )
option( BUILD_EXAMPLES  "Build examples."         ON )
option( BUILD_DOCUMENT  "Build doxygen document." ON )

message( STATUS "Options:" )
message( STATUS "BUILD_TESTS: ${BUILD_TESTS}" )
message( STATUS "BUILD_EXAMPLES: ${BUILD_EXAMPLES}" )
message( STATUS "BUILD_DOCUMENT: ${BUILD_DOCUMENT}" )

# boost?

include( cmake/@project_name@.cmake )
if( BUILD_DOCUMENT )
    include( cmake/doc.cmake )
endif()

if( BUILD_TESTS )
    include( cmake/tests.cmake )
endif()



