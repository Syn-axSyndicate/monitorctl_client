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
include src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/compiler_depend.make

# Include the progress variables for this target.
include src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/progress.make

# Include the compile flags for this target's objects.
include src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/flags.make

src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.obj: src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/flags.make
src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.obj: src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/includes_C.rsp
src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.obj: D:/softwares/portfolio/sysm2ctl_client/src/Sock_crud_Interface/main.c
src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.obj: src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\softwares\portfolio\sysm2ctl_client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.obj"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.obj -MF CMakeFiles\Sock_crud_interface.dir\main.c.obj.d -o CMakeFiles\Sock_crud_interface.dir\main.c.obj -c D:\softwares\portfolio\sysm2ctl_client\src\Sock_crud_Interface\main.c

src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/Sock_crud_interface.dir/main.c.i"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\softwares\portfolio\sysm2ctl_client\src\Sock_crud_Interface\main.c > CMakeFiles\Sock_crud_interface.dir\main.c.i

src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/Sock_crud_interface.dir/main.c.s"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface && C:\msys64\ucrt64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\softwares\portfolio\sysm2ctl_client\src\Sock_crud_Interface\main.c -o CMakeFiles\Sock_crud_interface.dir\main.c.s

# Object files for target Sock_crud_interface
Sock_crud_interface_OBJECTS = \
"CMakeFiles/Sock_crud_interface.dir/main.c.obj"

# External object files for target Sock_crud_interface
Sock_crud_interface_EXTERNAL_OBJECTS =

src/Sock_crud_Interface/libSock_crud_interface.a: src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/main.c.obj
src/Sock_crud_Interface/libSock_crud_interface.a: src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/build.make
src/Sock_crud_Interface/libSock_crud_interface.a: src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\softwares\portfolio\sysm2ctl_client\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libSock_crud_interface.a"
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface && $(CMAKE_COMMAND) -P CMakeFiles\Sock_crud_interface.dir\cmake_clean_target.cmake
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Sock_crud_interface.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/build: src/Sock_crud_Interface/libSock_crud_interface.a
.PHONY : src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/build

src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/clean:
	cd /d D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface && $(CMAKE_COMMAND) -P CMakeFiles\Sock_crud_interface.dir\cmake_clean.cmake
.PHONY : src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/clean

src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\softwares\portfolio\sysm2ctl_client D:\softwares\portfolio\sysm2ctl_client\src\Sock_crud_Interface D:\softwares\portfolio\sysm2ctl_client\build D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface D:\softwares\portfolio\sysm2ctl_client\build\src\Sock_crud_Interface\CMakeFiles\Sock_crud_interface.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/Sock_crud_Interface/CMakeFiles/Sock_crud_interface.dir/depend
