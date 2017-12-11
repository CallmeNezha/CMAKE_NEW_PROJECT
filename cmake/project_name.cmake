#//              ______    _____            _________       _____   _____
#//            /     /_  /    /            \___    /      /    /__/    /
#//           /        \/    /    ___        /    /      /            /    ___
#//          /     / \      /    /\__\      /    /___   /    ___     /    /   \
#//        _/____ /   \___ /    _\___     _/_______ / _/___ / _/___ /    _\___/\_
#//        created on 5/12/2017  all rights reserved by @NeZha

set( L_PROJECT_NAME project_name )
set( U_PROJECT_NAME PROJECT_NAME )

# verify existence
if( NOT IS_DIRECTORY ${${U_PROJECT_NAME}_DIR} )
    message( FATAL_ERROR "Can't load ${${U_PROJECT_NAME}_DIR}, directory doesn't exists. ${${U_PROJECT_NAME}_DIR}" )
    return()
else()
    set( PROJECT_DIR ${${U_PROJECT_NAME}_DIR} )
endif()

# grab the sources
file( GLOB SOURCES ${PROJECT_DIR}/src/*.cpp ${PROJECT_DIR}/include/*.hpp ${PROJECT_DIR}/include/*.h )

# create target
add_executable( ${L_PROJECT_NAME} ${SOURCES} )


set( 
    INCLUDE_DIRS
    ${PROJECT_DIR}/include
)
# add target include
target_link_libraries( ${L_PROJECT_NAME} PUBLIC ${LIB_DEPENDENCES} )
target_include_directories( ${L_PROJECT_NAME} PUBLIC ${INCLUDE_DIRS} )