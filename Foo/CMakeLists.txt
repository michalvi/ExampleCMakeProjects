cmake_minimum_required(VERSION 3.0.2)
project(Foo)

set(BUILD_SHARED_LIBS ON)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/libraries)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/libraries)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/applications)

list(
  APPEND CMAKE_PREFIX_PATH
  ${PROJECT_SOURCE_DIR}/dependencies/variant/result
)

add_subdirectory(source/libraries/foo)
