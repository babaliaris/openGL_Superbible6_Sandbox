# OpenGL Superbible 6 (premake5) sandbox project

Because I had multiple problems compiling and using the application framework sb6 and because I didn't
want to install GLFW globally in my system, I decided to create a sandbox environment using 
[premake5](https://premake.github.io/) as the project files generator (instead of cmake).

From now on, I will refer to the root directory of this repo as **$repo_dir**

## How to Compile:

**Clone The Project:**
```
git clone https://github.com/babaliaris/openGL_Superbible6_Sandbox.git
```

Generate the project files using [premake5](https://premake.github.io/). How to use premake: [Using Premake](https://premake.github.io/docs/Using-Premake/) 
```
cd <$repo_dir>
premake5 <action>
```
Then open your project solution or whatever file(s) you generate with premake and compile.

### Linux Example:
First, change the directory `cd <$repo_dir>` to your cloned repository directory, and then:

```
premake5 gmake2 && make
```

The above line will generate GNU's makefiles and will execute "make" in order to build the project.

### Cleaning
```
premake5 clean
make clean
```

`premake5 clean` will clean GLFW build files (.o, .a, .so), and `make clean` will take care of the rest of the cleaning.

You can also manually delete the **<$repo_dir>/builds** and **<$repo_dir>/obj** directories. For the GLFW cleaning, I 
recommend you to use `premake5 clean`, because the files are scattered around in a "messy" way.

## How To Run:
**Unix Systems:** `./builds/debug_x64/sandbox`.

**Now start writing your own code, using:** [$repo_dir/projects/Sandbox/src/sandbox.cpp](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/dev/projects/Sandbox/src/sandbox.cpp) as the starting point!!!

## What have I changed to the owner's code:
For Linux, I had to append in [<$repo_dir>/external/superbible6/include/sb6.h:344](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/9dbc4093c5f72cefeae4dd86b9e141541bd0ddb0/external/superbible6/include/sb6.h#L344) 
```
#elif defined _LINUX || defined __APPLE__ || __GNUC__
```
the **GNUC** predefined macro, for the GNU C++ compiler/preprocessor to work, else I was getting
the error `#error Undefined platform!`.

Also, the C++ compiler was treating some "old c code" as errors instead of warnings, and the compilation was failing.
In order to fix that, I added the build option flags `-Wno-implicit-function-declaration` and `-Wno-int-conversion`
in the [Premake.lua](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/2fb3baf0a15666a6691542c00eed8010a3c90f24/external/superbible6/premake5.lua#L26) file of the owner's project.
This **premake5** script is of my own making.

## Issues:
If you have any issues, open an Issue here on GitHub.
