project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	systemversion "latest"
	cppdialect "C++20"
	staticruntime "on"

	targetdir ("../../bin/" .. outputdir .. "-%{prj.name}")
	objdir ("../../bin-int/" .. outputdir .. "-%{prj.name}")

	files
	{
		"./src/**.h",
		"./src/**.cpp",

		"./include/**.h",
	}

	includedirs
	{
		"include"
	}

	defines
	{
	}

	filter "configurations:Logging"
		runtime "Debug"
		symbols "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
