PROJECT (QtTest)
cmake_minimum_required(VERSION 2.8)

cmake_policy( SET CMP0043 NEW )

# SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

set( CMAKE_INCLUDE_CURRENT_DIR ON )
set( CMAKE_AUTOMOC ON )
set( CMAKE_AUTOUIC ON )
set( CMAKE_AUTORCC ON )

# sources
set( QTTEST_SRCS
  main.cpp
  TestForm.cpp
)

# headers
set( QTTEST_MOC_HDRS
  TestForm.h
)

# ui
set( QTTEST_UIS
     TestForm.ui
)

# resources
set( QTTEST_RCS

)

find_package( Qt5Core REQUIRED )
find_package( Qt5Gui REQUIRED )
find_package( Qt5Widgets REQUIRED )

if( APPLE )
  set( MACOSX_BUNDLE_ICON_FILE QtTest.icns )
  set_source_files_properties( ${CMAKE_CURRENT_SOURCE_DIR}/QtTest.icns PROPERTIES
  			       MACOSX_PACKAGE_LOCATION Resources)
  set( QTTEST_SRCS ${QTTEST_SRCS} ${CMAKE_CURRENT_SOURCE_DIR}/QtTest.icns )
endif( APPLE )

add_executable( QtTest MACOSX_BUNDLE WIN32 
  ${QTTEST_SRCS}
  ${QTTEST_MOC_HDRS}
  ${QTTEST_UIS}
  ${QTTEST_RCS}
)

qt5_use_modules( QtTest Core )
qt5_use_modules( QtTest Gui )
qt5_use_modules( QtTest Widgets )

# target_link_libraries( QtTest Qt5::Core )
# target_link_libraries( QtTest Qt5::Gui )
# target_link_libraries( QtTest Qt5::Widgets )

# set( CMAKE_INSTALL_PREFIX install )

set( plugin_dest_dir bin )
set( qtconf_dest_dir bin )
set( APPS "\${CMAKE_INSTALL_PREFIX}/bin/QtTest" )

if( APPLE )
  set( plugin_dest_dir QtTest.app/Contents/PlugIns )
  set( qtconf_dest_dir QtTest.app/Contents/Resources )
  set( APPS "\${CMAKE_INSTALL_PREFIX}/QtTest.app" )
endif( APPLE )
if( WIN32 )
  set( APPS "\${CMAKE_INSTALL_PREFIX}/bin/QtTest.exe" )
endif( WIN32 )

install( TARGETS QtTest
  BUNDLE DESTINATION . COMPONENT Runtime
  RUNTIME DESTINATION bin COMPONENT Runtime
)

# copy plugins
install( DIRECTORY ${CMAKE_PREFIX_PATH}/plugins/platforms 
	 DESTINATION ${plugin_dest_dir}
	 COMPONENT Runtime
)

# write qt.conf
install( CODE "
    file(WRITE \"\${CMAKE_INSTALL_PREFIX}/${qtconf_dest_dir}/qt.conf\" \"[Paths]\nPlugins = PlugIns\")
    " COMPONENT Runtime )

set( DIRS ${CMAKE_PREFIX_PATH}/lib )
message( "Dirs: ${DIRS}" )
# install( CODE "message(\"hello world\")" )

# file(GLOB files  *.cpp)
# message( "Files: ${files} " )

# file( GLOB_RECURSE QTPLUGINS "${CMAKE_PREFIX_PATH}/plugins/*${CMAKE_SHARED_LIBRARY_SUFFIX}" )
# message( "Plugins: ${QTPLUGINS}" )
# message( "Suffix: ${CMAKE_SHARED_LIBRARY_SUFFIX}" )

INSTALL(CODE "
    file(GLOB_RECURSE QTPLUGINS
      \"\${CMAKE_INSTALL_PREFIX}/${plugin_dest_dir}/*${CMAKE_SHARED_LIBRARY_SUFFIX}\")
    include(BundleUtilities)
    fixup_bundle(\"${APPS}\" \"\${QTPLUGINS}\" \"${DIRS}\")
    " COMPONENT Runtime)

# set(CPACK_BINARY_DRAGNDROP ON)
# include(CPack)
