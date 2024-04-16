# Install script for directory: C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/leveldb.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib" TYPE STATIC_LIBRARY FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/Debug/leveldb.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/leveldb.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib" TYPE STATIC_LIBRARY FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/Release/leveldb.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/leveldb.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib" TYPE STATIC_LIBRARY FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/MinSizeRel/leveldb.lib")
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/leveldb.lib")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib" TYPE STATIC_LIBRARY FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/RelWithDebInfo/leveldb.lib")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/leveldb" TYPE FILE FILES
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/c.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/cache.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/comparator.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/db.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/dumpfile.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/env.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/export.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/filter_policy.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/iterator.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/options.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/slice.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/status.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/table_builder.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/table.h"
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/write_batch.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets.cmake"
         "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/CMakeFiles/Export/4ff65b820474bd70229a7b60a69760b4/leveldbTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb" TYPE FILE FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/CMakeFiles/Export/4ff65b820474bd70229a7b60a69760b4/leveldbTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb" TYPE FILE FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/CMakeFiles/Export/4ff65b820474bd70229a7b60a69760b4/leveldbTargets-debug.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets-minsizerel.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb" TYPE FILE FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/CMakeFiles/Export/4ff65b820474bd70229a7b60a69760b4/leveldbTargets-minsizerel.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets-relwithdebinfo.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb" TYPE FILE FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/CMakeFiles/Export/4ff65b820474bd70229a7b60a69760b4/leveldbTargets-relwithdebinfo.cmake")
  endif()
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbTargets-release.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
      message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb" TYPE FILE FILES "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/CMakeFiles/Export/4ff65b820474bd70229a7b60a69760b4/leveldbTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbConfig.cmake;C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb/leveldbConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/cmake/leveldb" TYPE FILE FILES
    "C:/Users/smkea/.cargo/registry/src/index.crates.io-6f17d22bba15001f/leveldb-sys-2.0.9/deps/leveldb-1.22/cmake/leveldbConfig.cmake"
    "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/leveldbConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
