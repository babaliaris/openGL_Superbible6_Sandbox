project "GLFW"
    kind "StaticLib"
    language "C"
    targetdir "%{_WORKING_DIR}/builds/%{cfg.shortname}/"
    objdir "%{_WORKING_DIR}/obj/%{prj.name}_%{cfg.shortname}/"
	
	files {
	"lib/enable.c",
	"lib/fullscreen.c",
	"lib/glext.c",
	"lib/image.c",
	"lib/init.c",
	"lib/input.c",
	"lib/joystick.c",
	"lib/stream.c",
	"lib/tga.c",
	"lib/thread.c",
	"lib/time.c",
	"lib/window.c",
	"lib/internal.h"
	}

    includedirs {
        "include/",
		"lib/"
    }

    -- Windows All Configurations.
    filter "system:windows"
		files {
		"lib/win32/win32_enable.c",
		"lib/win32/win32_fullscreen.c",
		"lib/win32/win32_glext.c",
		"lib/win32/win32_init.c",
		"lib/win32/win32_joystick.c",
		"lib/win32/win32_thread.c",
		"lib/win32/win32_time.c",
		"lib/win32/win32_window.c",
		"lib/win32/win32_dllmain.c",
		"lib/win32/platform.h"
		}
		
		buildoptions {
		"-D_GLFW_NO_DLOAD_GDI32",
		"-D_GLFW_NO_DLOAD_WINMM",
		"-D_MBCS",
		}
	
		defines { 
		"_CRT_SECURE_NO_WARNINGS"
		}
		
		includedirs {
		"lib/win32"
		}

    -- Linux All Configurations.
    filter "system:linux"
		files {
		"lib/x11/x11_enable.c",
		"lib/x11/x11_fullscreen.c",
		"lib/x11/x11_glext.c",
		"lib/x11/x11_init.c",
		"lib/x11/x11_joystick.c",
		"lib/x11/x11_thread.c",
		"lib/x11/x11_time.c",
		"lib/x11/x11_window.c",
		"lib/x11/x11_keysym2unicode.c",
		"lib/x11/platform.h"
		}
		
		buildoptions {
		"-D_GLFW_USE_LINUX_JOYSTICKS",
		"-D_GLFW_HAS_XRANDR",
		"-D_GLFW_HAS_PTHREAD",
		"-D_GLFW_HAS_SCHED_YIELD",
		"-D_GLFW_HAS_GLXGETPROCADDRESS",
		"-D_GLFW_HAS_SYSCONF",
		"-pthread",
		"-Wall"
		}
		
		includedirs {
		"lib/x11"
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