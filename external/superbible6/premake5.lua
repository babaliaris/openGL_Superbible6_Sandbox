project "Superbible6"
    kind "StaticLib"
    language "C++"
    targetdir "%{_WORKING_DIR}/builds/%{cfg.shortname}/"
    objdir "%{_WORKING_DIR}/obj/%{prj.name}_%{cfg.shortname}/"

    files {
        "src/**.h",
        "src/**.c",
        "src/**.cpp",
        "src/**.hpp",
		"include/**.h",
		"include/**.hpp"
    }

    includedirs {
        "include/",
		"extern/glfw-2.7.6/include",
    }

    -- Windows All Configurations.
    filter "system:windows"
        defines {
		"SUPERBIBLE6_WINDOWS"
		};

    -- Linux All Configurations.
    filter "system:linux"
        buildoptions {
        "-Wno-implicit-function-declaration",
        "-Wno-int-conversion"
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