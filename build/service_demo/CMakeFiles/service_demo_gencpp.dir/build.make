# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yxtwl94/yxtbot/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yxtwl94/yxtbot/build

# Utility rule file for service_demo_gencpp.

# Include the progress variables for this target.
include service_demo/CMakeFiles/service_demo_gencpp.dir/progress.make

service_demo_gencpp: service_demo/CMakeFiles/service_demo_gencpp.dir/build.make

.PHONY : service_demo_gencpp

# Rule to build all files generated by this target.
service_demo/CMakeFiles/service_demo_gencpp.dir/build: service_demo_gencpp

.PHONY : service_demo/CMakeFiles/service_demo_gencpp.dir/build

service_demo/CMakeFiles/service_demo_gencpp.dir/clean:
	cd /home/yxtwl94/yxtbot/build/service_demo && $(CMAKE_COMMAND) -P CMakeFiles/service_demo_gencpp.dir/cmake_clean.cmake
.PHONY : service_demo/CMakeFiles/service_demo_gencpp.dir/clean

service_demo/CMakeFiles/service_demo_gencpp.dir/depend:
	cd /home/yxtwl94/yxtbot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yxtwl94/yxtbot/src /home/yxtwl94/yxtbot/src/service_demo /home/yxtwl94/yxtbot/build /home/yxtwl94/yxtbot/build/service_demo /home/yxtwl94/yxtbot/build/service_demo/CMakeFiles/service_demo_gencpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : service_demo/CMakeFiles/service_demo_gencpp.dir/depend

