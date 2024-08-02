# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\softwares\portfolio\sysm2ctl_client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\softwares\portfolio\sysm2ctl_client\build

# Include any dependencies generated for this target.
include src/network_interface/CMakeFiles/network_interface.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/network_interface/CMakeFiles/network_interface.dir/compiler_depend.make

# Include the progress variables for this target.
include src/network_interface/CMakeFiles/network_interface.dir/progress.make

# Include the compile flags for this target's objects.
include src/network_interface/CMakeFiles/network_interface.dir/flags.make

src/network_interface/CMakeFiles/network_interface.dir/server.c.obj: src/network_interface/CMakeFiles/network_interface.dir/flags.make
src/network_interface/CMakeFiles/network_interface.dir/server.c.obj: src/network_interface/CMakeFiles/network_interface.dir/includes_C.rsp
src/network_interface/CMakeFiles/network_interface.dir/server.c.obj: D:/softwares/portfolio/sysm2ctl_client/src/network_interface/server.c
src/network_interface/CMakeFiles/network_interface.dir/server.c.obj: src/network_interface/CMakeFiles/network_interface.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\softwares\portfolio\sysm2ctl_client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/network_interface/CMakeFiles/network_interface.dir/server.c.obj"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/network_interface/CMakeFiles/network_interface.dir/server.c.obj -MF CMakeFiles\network_interface.dir\server.c.obj.d -o CMakeFiles\network_interface.dir\server.c.obj -c D:\softwares\portfolio\sysm2ctl_client\src\network_interface\server.c

src/network_interface/CMakeFiles/network_interface.dir/server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/network_interface.dir/server.c.i"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\softwares\portfolio\sysm2ctl_client\src\network_interface\server.c > CMakeFiles\network_interface.dir\server.c.i

src/network_interface/CMakeFiles/network_interface.dir/server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/network_interface.dir/server.c.s"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\softwares\portfolio\sysm2ctl_client\src\network_interface\server.c -o CMakeFiles\network_interface.dir\server.c.s

# Object files for target network_interface
network_interface_OBJECTS = \
"CMakeFiles/network_interface.dir/server.c.obj"

# External object files for target network_interface
network_interface_EXTERNAL_OBJECTS =

src/network_interface/libnetwork_interface.a: src/network_interface/CMakeFiles/network_interface.dir/server.c.obj
src/network_interface/libnetwork_interface.a: src/network_interface/CMakeFiles/network_interface.dir/build.make
src/network_interface/libnetwork_interface.a: src/network_interface/CMakeFiles/network_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\softwares\portfolio\sysm2ctl_client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libnetwork_interface.a"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface && $(CMAKE_COMMAND) -P CMakeFiles\network_interface.dir\cmake_clean_target.cmake
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\network_interface.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/network_interface/CMakeFiles/network_interface.dir/build: src/network_interface/libnetwork_interface.a
.PHONY : src/network_interface/CMakeFiles/network_interface.dir/build

src/network_interface/CMakeFiles/network_interface.dir/clean:
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface && $(CMAKE_COMMAND) -P CMakeFiles\network_interface.dir\cmake_clean.cmake
.PHONY : src/network_interface/CMakeFiles/network_interface.dir/clean

src/network_interface/CMakeFiles/network_interface.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\softwares\portfolio\sysm2ctl_client D:\softwares\portfolio\sysm2ctl_client\src\network_interface D:\softwares\portfolio\sysm2ctl_client\build D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface D:\softwares\portfolio\sysm2ctl_client\build\src\network_interface\CMakeFiles\network_interface.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/network_interface/CMakeFiles/network_interface.dir/depend
