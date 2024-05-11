-- ||||||||||||||||||||||||||||||Some Helpful Functions|||||||||||||||||||||||||||||| --

-- Check OS.
function CheckOS() 
    if ( package.config:sub(1,1) == "\\" ) then
        return "Windows"
    else
        return "Linux"
    end
end

-- ||||||||||||||||||||||||||||||Some Helpful Functions|||||||||||||||||||||||||||||| --




-- -------------------------------Compile GLFW------------------------------- --
function CompileGLFW()
	
	-- Linux.
	if CheckOS() == "Linux" then
		if _ACTION == "clean" then
			print("Cleaning GLFW...")
			os.execute("rm external/superbible6/extern/glfw-2.7.6/lib/x11/*.so")
			os.execute("rm external/superbible6/extern/glfw-2.7.6/lib/x11/*.a")
			os.execute("rm external/superbible6/extern/glfw-2.7.6/lib/x11/*.o")

		else
			print("Compiling GLFW...")
			os.execute("cd external/superbible6/extern/glfw-2.7.6 && make x11")
		end
		
	-- Windows.
	else
		if _ACTION == "clean" then
			print("Cleaning GLFW...")
			os.execute("rm external/superbible6/extern/glfw-2.7.6/lib/x11/*.so")
			os.execute("rm external/superbible6/extern/glfw-2.7.6/lib/x11/*.a")
			os.execute("rm external/superbible6/extern/glfw-2.7.6/lib/x11/*.o")

		else
			print("Compiling GLFW...")
			os.execute("cd external\\superbible6\\extern\\glfw-2.7.6 && make win32-msys")
		end
	end
	
end
-- CompileGLFW()
-- -------------------------------Compile GLFW------------------------------- --

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