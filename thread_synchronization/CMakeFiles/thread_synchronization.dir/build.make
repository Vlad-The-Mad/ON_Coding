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
CMAKE_SOURCE_DIR = /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization

# Include any dependencies generated for this target.
include CMakeFiles/thread_synchronization.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/thread_synchronization.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/thread_synchronization.dir/flags.make

CMakeFiles/thread_synchronization.dir/main.cpp.o: CMakeFiles/thread_synchronization.dir/flags.make
CMakeFiles/thread_synchronization.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/thread_synchronization.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thread_synchronization.dir/main.cpp.o -c /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization/main.cpp

CMakeFiles/thread_synchronization.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thread_synchronization.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization/main.cpp > CMakeFiles/thread_synchronization.dir/main.cpp.i

CMakeFiles/thread_synchronization.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thread_synchronization.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization/main.cpp -o CMakeFiles/thread_synchronization.dir/main.cpp.s

CMakeFiles/thread_synchronization.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/thread_synchronization.dir/main.cpp.o.requires

CMakeFiles/thread_synchronization.dir/main.cpp.o.provides: CMakeFiles/thread_synchronization.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/thread_synchronization.dir/build.make CMakeFiles/thread_synchronization.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/thread_synchronization.dir/main.cpp.o.provides

CMakeFiles/thread_synchronization.dir/main.cpp.o.provides.build: CMakeFiles/thread_synchronization.dir/main.cpp.o


# Object files for target thread_synchronization
thread_synchronization_OBJECTS = \
"CMakeFiles/thread_synchronization.dir/main.cpp.o"

# External object files for target thread_synchronization
thread_synchronization_EXTERNAL_OBJECTS =

thread_synchronization: CMakeFiles/thread_synchronization.dir/main.cpp.o
thread_synchronization: CMakeFiles/thread_synchronization.dir/build.make
thread_synchronization: CMakeFiles/thread_synchronization.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable thread_synchronization"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thread_synchronization.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/thread_synchronization.dir/build: thread_synchronization

.PHONY : CMakeFiles/thread_synchronization.dir/build

CMakeFiles/thread_synchronization.dir/requires: CMakeFiles/thread_synchronization.dir/main.cpp.o.requires

.PHONY : CMakeFiles/thread_synchronization.dir/requires

CMakeFiles/thread_synchronization.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/thread_synchronization.dir/cmake_clean.cmake
.PHONY : CMakeFiles/thread_synchronization.dir/clean

CMakeFiles/thread_synchronization.dir/depend:
	cd /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization /home/vladimir/programming/onsemi/embedded_coding_challenge_internship/embedded_coding_challenge_internship/thread_synchronization/CMakeFiles/thread_synchronization.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/thread_synchronization.dir/depend

