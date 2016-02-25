cmake_minimum_required( VERSION 3.0 )
project( QtBundle )
# init Qt
set( CMAKE_INCLUDE_CURRENT_DIR ON )
set( CMAKE_AUTOMOC ON )
# sources
set( SOURCES main.cpp )
# Qt packages
find_package( Qt5Widgets REQUIRED )
# exe
add_executable( ${PROJECT_NAME} MACOSX_BUNDLE ${SOURCES} )
# Qt modules
qt5_use_modules( ${PROJECT_NAME} Widgets )

# hack
add_custom_command( TARGET ${PROJECT_NAME} COMMAND /Users/oleh/Documents/smop_shell/bin/Qt5.5.1/bin/macdeployqt 
  ARGS /Users/oleh/Documents/test/qt_bundles2/build/QtBundle.app
)

