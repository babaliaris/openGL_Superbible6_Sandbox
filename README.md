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
make clean
```
You can also manually delete the **<$repo_dir>/builds** and **<$repo_dir>/obj** directories.

## How To Run:
**Unix Systems:** `./builds/debug_x64/sandbox`.

**Now start writing your own code, using:** [$repo_dir/projects/Sandbox/src/sandbox.cpp](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/dev/projects/Sandbox/src/sandbox.cpp) as the starting point!!!
**Or** Include the [GLFW premake5.lua](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/dev/external/superbible6/extern/glfw-2.7.6/premake5.lua) and [superbible6 premake5.lua](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/dev/external/superbible6/premake5.lua)
scripts into your own workspace **premake5** script ([like this one](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/dev/premake5.lua)) and create a **ConsoleApp** or **WindowedApp** (For Windows) that is similar as
[this project](https://github.com/babaliaris/openGL_Superbible6_Sandbox/blob/dev/projects/Sandbox/premake5.lua)

For Windows, use the relevant executable file to start the application.
