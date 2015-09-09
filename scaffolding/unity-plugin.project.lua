-- premake for unity-plugin.project

unityplugin_includedirs = {
	"../src/unity-plugin",
}


project "unity-plugin"
	kind "SharedLib"
	language "C++"
	flags {}

	defines {
		default_defines,
	}

	if isWinBuild() then
		--pchheader "stdafx.h"
		--pchsource "stdafx.cpp"
	else
		--pchheader "../src/unity-plugin/stdafx.h"
	end


	includedirs {
		unityplugin_includedirs,
		default_includedirs,
	}

	files {
		"../src/unity-plugin/*.h",
		"../src/unity-plugin/*.hpp",
		"../src/unity-plugin/*.c",
		"../src/unity-plugin/*.cpp",
	}

	links {
		"core",
		default_links
	}

	buildoptions {
		cpp11_buildoptions,
	}

	linkoptions {
		cpp11_linkoptions,
	}
