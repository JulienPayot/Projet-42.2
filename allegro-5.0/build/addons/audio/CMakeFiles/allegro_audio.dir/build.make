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
include addons/audio/CMakeFiles/allegro_audio.dir/depend.make

# Include the progress variables for this target.
include addons/audio/CMakeFiles/allegro_audio.dir/progress.make

# Include the compile flags for this target's objects.
include addons/audio/CMakeFiles/allegro_audio.dir/flags.make

addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o: ../addons/audio/audio.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/audio.c.o   -c /home/naterforst/allegro-5.0/addons/audio/audio.c

addons/audio/CMakeFiles/allegro_audio.dir/audio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/audio.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/audio.c > CMakeFiles/allegro_audio.dir/audio.c.i

addons/audio/CMakeFiles/allegro_audio.dir/audio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/audio.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/audio.c -o CMakeFiles/allegro_audio.dir/audio.c.s

addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o


addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o: ../addons/audio/audio_io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/audio_io.c.o   -c /home/naterforst/allegro-5.0/addons/audio/audio_io.c

addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/audio_io.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/audio_io.c > CMakeFiles/allegro_audio.dir/audio_io.c.i

addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/audio_io.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/audio_io.c -o CMakeFiles/allegro_audio.dir/audio_io.c.s

addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o


addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o: ../addons/audio/kcm_dtor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/kcm_dtor.c.o   -c /home/naterforst/allegro-5.0/addons/audio/kcm_dtor.c

addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/kcm_dtor.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/kcm_dtor.c > CMakeFiles/allegro_audio.dir/kcm_dtor.c.i

addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/kcm_dtor.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/kcm_dtor.c -o CMakeFiles/allegro_audio.dir/kcm_dtor.c.s

addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o


addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o: ../addons/audio/kcm_instance.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/kcm_instance.c.o   -c /home/naterforst/allegro-5.0/addons/audio/kcm_instance.c

addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/kcm_instance.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/kcm_instance.c > CMakeFiles/allegro_audio.dir/kcm_instance.c.i

addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/kcm_instance.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/kcm_instance.c -o CMakeFiles/allegro_audio.dir/kcm_instance.c.s

addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o


addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o: ../addons/audio/kcm_mixer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/kcm_mixer.c.o   -c /home/naterforst/allegro-5.0/addons/audio/kcm_mixer.c

addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/kcm_mixer.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/kcm_mixer.c > CMakeFiles/allegro_audio.dir/kcm_mixer.c.i

addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/kcm_mixer.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/kcm_mixer.c -o CMakeFiles/allegro_audio.dir/kcm_mixer.c.s

addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o


addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o: ../addons/audio/kcm_sample.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/kcm_sample.c.o   -c /home/naterforst/allegro-5.0/addons/audio/kcm_sample.c

addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/kcm_sample.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/kcm_sample.c > CMakeFiles/allegro_audio.dir/kcm_sample.c.i

addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/kcm_sample.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/kcm_sample.c -o CMakeFiles/allegro_audio.dir/kcm_sample.c.s

addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o


addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o: ../addons/audio/kcm_stream.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/kcm_stream.c.o   -c /home/naterforst/allegro-5.0/addons/audio/kcm_stream.c

addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/kcm_stream.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/kcm_stream.c > CMakeFiles/allegro_audio.dir/kcm_stream.c.i

addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/kcm_stream.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/kcm_stream.c -o CMakeFiles/allegro_audio.dir/kcm_stream.c.s

addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o


addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o: ../addons/audio/kcm_voice.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/kcm_voice.c.o   -c /home/naterforst/allegro-5.0/addons/audio/kcm_voice.c

addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/kcm_voice.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/kcm_voice.c > CMakeFiles/allegro_audio.dir/kcm_voice.c.i

addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/kcm_voice.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/kcm_voice.c -o CMakeFiles/allegro_audio.dir/kcm_voice.c.s

addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o


addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o: addons/audio/CMakeFiles/allegro_audio.dir/flags.make
addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o: ../addons/audio/oss.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/allegro_audio.dir/oss.c.o   -c /home/naterforst/allegro-5.0/addons/audio/oss.c

addons/audio/CMakeFiles/allegro_audio.dir/oss.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/allegro_audio.dir/oss.c.i"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/naterforst/allegro-5.0/addons/audio/oss.c > CMakeFiles/allegro_audio.dir/oss.c.i

addons/audio/CMakeFiles/allegro_audio.dir/oss.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/allegro_audio.dir/oss.c.s"
	cd /home/naterforst/allegro-5.0/build/addons/audio && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/naterforst/allegro-5.0/addons/audio/oss.c -o CMakeFiles/allegro_audio.dir/oss.c.s

addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.requires:

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.requires

addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.provides: addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.requires
	$(MAKE) -f addons/audio/CMakeFiles/allegro_audio.dir/build.make addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.provides.build
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.provides

addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.provides.build: addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o


# Object files for target allegro_audio
allegro_audio_OBJECTS = \
"CMakeFiles/allegro_audio.dir/audio.c.o" \
"CMakeFiles/allegro_audio.dir/audio_io.c.o" \
"CMakeFiles/allegro_audio.dir/kcm_dtor.c.o" \
"CMakeFiles/allegro_audio.dir/kcm_instance.c.o" \
"CMakeFiles/allegro_audio.dir/kcm_mixer.c.o" \
"CMakeFiles/allegro_audio.dir/kcm_sample.c.o" \
"CMakeFiles/allegro_audio.dir/kcm_stream.c.o" \
"CMakeFiles/allegro_audio.dir/kcm_voice.c.o" \
"CMakeFiles/allegro_audio.dir/oss.c.o"

# External object files for target allegro_audio
allegro_audio_EXTERNAL_OBJECTS =

lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/build.make
lib/liballegro_audio.so.5.0.7: lib/liballegro.so.5.0.7
lib/liballegro_audio.so.5.0.7: /usr/lib/x86_64-linux-gnu/libSM.so
lib/liballegro_audio.so.5.0.7: /usr/lib/x86_64-linux-gnu/libICE.so
lib/liballegro_audio.so.5.0.7: /usr/lib/x86_64-linux-gnu/libX11.so
lib/liballegro_audio.so.5.0.7: /usr/lib/x86_64-linux-gnu/libXext.so
lib/liballegro_audio.so.5.0.7: /usr/lib/x86_64-linux-gnu/libGL.so
lib/liballegro_audio.so.5.0.7: /usr/lib/x86_64-linux-gnu/libGLU.so
lib/liballegro_audio.so.5.0.7: addons/audio/CMakeFiles/allegro_audio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/naterforst/allegro-5.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C shared library ../../lib/liballegro_audio.so"
	cd /home/naterforst/allegro-5.0/build/addons/audio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/allegro_audio.dir/link.txt --verbose=$(VERBOSE)
	cd /home/naterforst/allegro-5.0/build/addons/audio && $(CMAKE_COMMAND) -E cmake_symlink_library ../../lib/liballegro_audio.so.5.0.7 ../../lib/liballegro_audio.so.5.0 ../../lib/liballegro_audio.so

lib/liballegro_audio.so.5.0: lib/liballegro_audio.so.5.0.7
	@$(CMAKE_COMMAND) -E touch_nocreate lib/liballegro_audio.so.5.0

lib/liballegro_audio.so: lib/liballegro_audio.so.5.0.7
	@$(CMAKE_COMMAND) -E touch_nocreate lib/liballegro_audio.so

# Rule to build all files generated by this target.
addons/audio/CMakeFiles/allegro_audio.dir/build: lib/liballegro_audio.so

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/build

addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/audio.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/audio_io.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/kcm_dtor.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/kcm_instance.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/kcm_mixer.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/kcm_sample.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/kcm_stream.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/kcm_voice.c.o.requires
addons/audio/CMakeFiles/allegro_audio.dir/requires: addons/audio/CMakeFiles/allegro_audio.dir/oss.c.o.requires

.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/requires

addons/audio/CMakeFiles/allegro_audio.dir/clean:
	cd /home/naterforst/allegro-5.0/build/addons/audio && $(CMAKE_COMMAND) -P CMakeFiles/allegro_audio.dir/cmake_clean.cmake
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/clean

addons/audio/CMakeFiles/allegro_audio.dir/depend:
	cd /home/naterforst/allegro-5.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/naterforst/allegro-5.0 /home/naterforst/allegro-5.0/addons/audio /home/naterforst/allegro-5.0/build /home/naterforst/allegro-5.0/build/addons/audio /home/naterforst/allegro-5.0/build/addons/audio/CMakeFiles/allegro_audio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : addons/audio/CMakeFiles/allegro_audio.dir/depend
