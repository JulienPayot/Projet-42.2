# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/naterforst/allegro-5.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/naterforst/allegro-5.0/build

# Include any dependencies generated for this target.
include docs/CMakeFiles/make_doc.dir/depend.make

# Include the progress variables for this target.
include docs/CMakeFiles/make_doc.dir/progress.make

# Include the compile flags for this target's objects.
include docs/CMakeFiles/make_doc.dir/flags.make

docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o: docs/CMakeFiles/make_doc.dir/flags.make
docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o: ../docs/scripts/make_doc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/make_doc.dir/scripts/make_doc.c.o   -c /home/naterforst/allegro-5.0/docs/scripts/make_doc.c

docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make_doc.dir/scripts/make_doc.c.i"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/docs/scripts/make_doc.c > CMakeFiles/make_doc.dir/scripts/make_doc.c.i

docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make_doc.dir/scripts/make_doc.c.s"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/docs/scripts/make_doc.c -o CMakeFiles/make_doc.dir/scripts/make_doc.c.s

docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.requires:

.PHONY : docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.requires

docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.provides: docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.requires
	$(MAKE) -f docs/CMakeFiles/make_doc.dir/build.make docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.provides.build
.PHONY : docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.provides

docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.provides.build: docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o


docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o: docs/CMakeFiles/make_doc.dir/flags.make
docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o: ../docs/scripts/make_man.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/make_doc.dir/scripts/make_man.c.o   -c /home/naterforst/allegro-5.0/docs/scripts/make_man.c

docs/CMakeFiles/make_doc.dir/scripts/make_man.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make_doc.dir/scripts/make_man.c.i"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/docs/scripts/make_man.c > CMakeFiles/make_doc.dir/scripts/make_man.c.i

docs/CMakeFiles/make_doc.dir/scripts/make_man.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make_doc.dir/scripts/make_man.c.s"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/docs/scripts/make_man.c -o CMakeFiles/make_doc.dir/scripts/make_man.c.s

docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.requires:

.PHONY : docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.requires

docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.provides: docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.requires
	$(MAKE) -f docs/CMakeFiles/make_doc.dir/build.make docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.provides.build
.PHONY : docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.provides

docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.provides.build: docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o


docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o: docs/CMakeFiles/make_doc.dir/flags.make
docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o: ../docs/scripts/make_single.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/make_doc.dir/scripts/make_single.c.o   -c /home/naterforst/allegro-5.0/docs/scripts/make_single.c

docs/CMakeFiles/make_doc.dir/scripts/make_single.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make_doc.dir/scripts/make_single.c.i"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/docs/scripts/make_single.c > CMakeFiles/make_doc.dir/scripts/make_single.c.i

docs/CMakeFiles/make_doc.dir/scripts/make_single.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make_doc.dir/scripts/make_single.c.s"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/docs/scripts/make_single.c -o CMakeFiles/make_doc.dir/scripts/make_single.c.s

docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.requires:

.PHONY : docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.requires

docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.provides: docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.requires
	$(MAKE) -f docs/CMakeFiles/make_doc.dir/build.make docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.provides.build
.PHONY : docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.provides

docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.provides.build: docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o


docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o: docs/CMakeFiles/make_doc.dir/flags.make
docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o: ../docs/scripts/aatree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/make_doc.dir/scripts/aatree.c.o   -c /home/naterforst/allegro-5.0/docs/scripts/aatree.c

docs/CMakeFiles/make_doc.dir/scripts/aatree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make_doc.dir/scripts/aatree.c.i"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/docs/scripts/aatree.c > CMakeFiles/make_doc.dir/scripts/aatree.c.i

docs/CMakeFiles/make_doc.dir/scripts/aatree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make_doc.dir/scripts/aatree.c.s"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/docs/scripts/aatree.c -o CMakeFiles/make_doc.dir/scripts/aatree.c.s

docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.requires:

.PHONY : docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.requires

docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.provides: docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.requires
	$(MAKE) -f docs/CMakeFiles/make_doc.dir/build.make docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.provides.build
.PHONY : docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.provides

docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.provides.build: docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o


docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o: docs/CMakeFiles/make_doc.dir/flags.make
docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o: ../docs/scripts/dawk.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/make_doc.dir/scripts/dawk.c.o   -c /home/naterforst/allegro-5.0/docs/scripts/dawk.c

docs/CMakeFiles/make_doc.dir/scripts/dawk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make_doc.dir/scripts/dawk.c.i"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/docs/scripts/dawk.c > CMakeFiles/make_doc.dir/scripts/dawk.c.i

docs/CMakeFiles/make_doc.dir/scripts/dawk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make_doc.dir/scripts/dawk.c.s"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/docs/scripts/dawk.c -o CMakeFiles/make_doc.dir/scripts/dawk.c.s

docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.requires:

.PHONY : docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.requires

docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.provides: docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.requires
	$(MAKE) -f docs/CMakeFiles/make_doc.dir/build.make docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.provides.build
.PHONY : docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.provides

docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.provides.build: docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o


docs/CMakeFiles/make_doc.dir/scripts/trex.c.o: docs/CMakeFiles/make_doc.dir/flags.make
docs/CMakeFiles/make_doc.dir/scripts/trex.c.o: ../docs/scripts/trex.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object docs/CMakeFiles/make_doc.dir/scripts/trex.c.o"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/make_doc.dir/scripts/trex.c.o   -c /home/naterforst/allegro-5.0/docs/scripts/trex.c

docs/CMakeFiles/make_doc.dir/scripts/trex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/make_doc.dir/scripts/trex.c.i"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/docs/scripts/trex.c > CMakeFiles/make_doc.dir/scripts/trex.c.i

docs/CMakeFiles/make_doc.dir/scripts/trex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/make_doc.dir/scripts/trex.c.s"
	cd /home/naterforst/allegro-5.0/build/docs && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/docs/scripts/trex.c -o CMakeFiles/make_doc.dir/scripts/trex.c.s

docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.requires:

.PHONY : docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.requires

docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.provides: docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.requires
	$(MAKE) -f docs/CMakeFiles/make_doc.dir/build.make docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.provides.build
.PHONY : docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.provides

docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.provides.build: docs/CMakeFiles/make_doc.dir/scripts/trex.c.o


# Object files for target make_doc
make_doc_OBJECTS = \
"CMakeFiles/make_doc.dir/scripts/make_doc.c.o" \
"CMakeFiles/make_doc.dir/scripts/make_man.c.o" \
"CMakeFiles/make_doc.dir/scripts/make_single.c.o" \
"CMakeFiles/make_doc.dir/scripts/aatree.c.o" \
"CMakeFiles/make_doc.dir/scripts/dawk.c.o" \
"CMakeFiles/make_doc.dir/scripts/trex.c.o"

# External object files for target make_doc
make_doc_EXTERNAL_OBJECTS =

docs/make_doc: docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o
docs/make_doc: docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o
docs/make_doc: docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o
docs/make_doc: docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o
docs/make_doc: docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o
docs/make_doc: docs/CMakeFiles/make_doc.dir/scripts/trex.c.o
docs/make_doc: docs/CMakeFiles/make_doc.dir/build.make
docs/make_doc: docs/CMakeFiles/make_doc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable make_doc"
	cd /home/naterforst/allegro-5.0/build/docs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/make_doc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
docs/CMakeFiles/make_doc.dir/build: docs/make_doc

.PHONY : docs/CMakeFiles/make_doc.dir/build

docs/CMakeFiles/make_doc.dir/requires: docs/CMakeFiles/make_doc.dir/scripts/make_doc.c.o.requires
docs/CMakeFiles/make_doc.dir/requires: docs/CMakeFiles/make_doc.dir/scripts/make_man.c.o.requires
docs/CMakeFiles/make_doc.dir/requires: docs/CMakeFiles/make_doc.dir/scripts/make_single.c.o.requires
docs/CMakeFiles/make_doc.dir/requires: docs/CMakeFiles/make_doc.dir/scripts/aatree.c.o.requires
docs/CMakeFiles/make_doc.dir/requires: docs/CMakeFiles/make_doc.dir/scripts/dawk.c.o.requires
docs/CMakeFiles/make_doc.dir/requires: docs/CMakeFiles/make_doc.dir/scripts/trex.c.o.requires

.PHONY : docs/CMakeFiles/make_doc.dir/requires

docs/CMakeFiles/make_doc.dir/clean:
	cd /home/naterforst/allegro-5.0/build/docs && $(CMAKE_COMMAND) -P CMakeFiles/make_doc.dir/cmake_clean.cmake
.PHONY : docs/CMakeFiles/make_doc.dir/clean

docs/CMakeFiles/make_doc.dir/depend:
	cd /home/naterforst/allegro-5.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/naterforst/allegro-5.0 /home/naterforst/allegro-5.0/docs /home/naterforst/allegro-5.0/build /home/naterforst/allegro-5.0/build/docs /home/naterforst/allegro-5.0/build/docs/CMakeFiles/make_doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : docs/CMakeFiles/make_doc.dir/depend
