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

# Include any dependencies generated for this target.
include service_demo/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include service_demo/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include service_demo/CMakeFiles/server.dir/flags.make

service_demo/CMakeFiles/server.dir/src/server.cpp.o: service_demo/CMakeFiles/server.dir/flags.make
service_demo/CMakeFiles/server.dir/src/server.cpp.o: /home/yxtwl94/yxtbot/src/service_demo/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yxtwl94/yxtbot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object service_demo/CMakeFiles/server.dir/src/server.cpp.o"
	cd /home/yxtwl94/yxtbot/build/service_demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/yxtwl94/yxtbot/src/service_demo/src/server.cpp

service_demo/CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	cd /home/yxtwl94/yxtbot/build/service_demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yxtwl94/yxtbot/src/service_demo/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

service_demo/CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	cd /home/yxtwl94/yxtbot/build/service_demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yxtwl94/yxtbot/src/service_demo/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires:

.PHONY : service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires

service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides: service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires
	$(MAKE) -f service_demo/CMakeFiles/server.dir/build.make service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides.build
.PHONY : service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides

service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides.build: service_demo/CMakeFiles/server.dir/src/server.cpp.o


# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/yxtwl94/yxtbot/devel/lib/service_demo/server: service_demo/CMakeFiles/server.dir/src/server.cpp.o
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: service_demo/CMakeFiles/server.dir/build.make
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/libroscpp.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/librosconsole.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/librostime.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /opt/ros/melodic/lib/libcpp_common.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/yxtwl94/yxtbot/devel/lib/service_demo/server: service_demo/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yxtwl94/yxtbot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/yxtwl94/yxtbot/devel/lib/service_demo/server"
	cd /home/yxtwl94/yxtbot/build/service_demo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
service_demo/CMakeFiles/server.dir/build: /home/yxtwl94/yxtbot/devel/lib/service_demo/server

.PHONY : service_demo/CMakeFiles/server.dir/build

service_demo/CMakeFiles/server.dir/requires: service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires

.PHONY : service_demo/CMakeFiles/server.dir/requires

service_demo/CMakeFiles/server.dir/clean:
	cd /home/yxtwl94/yxtbot/build/service_demo && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : service_demo/CMakeFiles/server.dir/clean

service_demo/CMakeFiles/server.dir/depend:
	cd /home/yxtwl94/yxtbot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yxtwl94/yxtbot/src /home/yxtwl94/yxtbot/src/service_demo /home/yxtwl94/yxtbot/build /home/yxtwl94/yxtbot/build/service_demo /home/yxtwl94/yxtbot/build/service_demo/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : service_demo/CMakeFiles/server.dir/depend

