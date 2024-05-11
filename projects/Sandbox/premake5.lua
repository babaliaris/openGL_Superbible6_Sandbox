project "Sandbox"
    targetname "sandbox"
    kind "ConsoleApp"
    language "C++"
    targetdir "%{_WORKING_DIR}/builds/%{cfg.shortname}/"
    objdir "%{_WORKING_DIR}/obj/%{prj.name}_%{cfg.shortname}/"

    files {
        "src/**.cpp",
        "src/**.c",
        "src/**.h",
        "src/**.hpp"
    }

    includedirs {
        "%{_WORKING_DIR}/external/superbible6/include",
        "%{_WORKING_DIR}/external/superbible6/extern/glfw-2.7.6/include",
    }

    links {
        "Superbible6",
		"GLFW"
    }

    -- All configurations for LINUX.
    filter "system:linux"
        links {"GL", "X11", "pthread", "m",
            "Xrandr", "Xi", "ldl", "glfw"
        }

        libdirs {
            "%{_WORKING_DIR}/external/superbible6/extern/glfw-2.7.6/lib/x11/",
            "%{_WORKING_DIR}/external/superbible6/lib/"
        }
		
		
	-- All configurations for WINDOWS.
    filter "system:windows"
		kind "WindowedApp"
        links {
		"opengl32",
		"winmm",
		"gdi32"
        }


    --All Platforms.
    filter{}
    
    filter "configurations:debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:dist"
        runtime "Release"
        optimize "on"

    filter "configurations:release"
        runtime "Release"
        optimize "on"