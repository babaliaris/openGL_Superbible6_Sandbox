workspace "Superbible6"
    configurations { "debug", "dist", "release"}
    platforms "x64"
    startproject "Sandbox"


-- ||||||||||||||||||||Include Projects|||||||||||||||||||| --
group "external"
	include "external/superbible6/extern/glfw-2.7.6"
    include "external/superbible6"
group ""


include "projects/Sandbox"
-- ||||||||||||||||||||Include Projects|||||||||||||||||||| --