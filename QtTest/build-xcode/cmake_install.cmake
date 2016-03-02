# Install script for directory: /Users/oleh/Documents/test/FuckingCMake/QtTest

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/oleh/Documents/test/FuckingCMake/QtTest/build-xcode/Debug/QtTest.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/oleh/Documents/smop_shell/bin/Qt5.5.1/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/oleh/Documents/test/FuckingCMake/QtTest/build-xcode/Release/QtTest.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/oleh/Documents/smop_shell/bin/Qt5.5.1/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/oleh/Documents/test/FuckingCMake/QtTest/build-xcode/MinSizeRel/QtTest.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/oleh/Documents/smop_shell/bin/Qt5.5.1/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/Users/oleh/Documents/test/FuckingCMake/QtTest/build-xcode/RelWithDebInfo/QtTest.app" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/oleh/Documents/smop_shell/bin/Qt5.5.1/lib"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/./QtTest.app/Contents/MacOS/QtTest")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/QtTest.app/Contents/PlugIns" TYPE DIRECTORY FILES "/Users/oleh/Documents/smop_shell/bin/Qt5.5.1//plugins/platforms")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  
    file(WRITE "${CMAKE_INSTALL_PREFIX}/QtTest.app/Contents/Resources/qt.conf" "[Paths]
Plugins = PlugIns")
    
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Runtime")
  
    file(GLOB_RECURSE QTPLUGINS
      "${CMAKE_INSTALL_PREFIX}/QtTest.app/Contents/PlugIns/*.dylib")
    include(BundleUtilities)
    fixup_bundle("${CMAKE_INSTALL_PREFIX}/QtTest.app" "${QTPLUGINS}" "/Users/oleh/Documents/smop_shell/bin/Qt5.5.1//lib")
    
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/oleh/Documents/test/FuckingCMake/QtTest/build-xcode/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
