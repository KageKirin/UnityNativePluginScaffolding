-- premake for core.project

core_includedirs = {
	"../src/core",
}


project "core"
	kind "StaticLib"
	language "C++"
	flags {}

	defines {
		default_defines,
	}

	if isWinBuild() then
		--pchheader "stdafx.h"
		--pchsource "stdafx.cpp"
	else
		--pchheader "../src/core/stdafx.h"
	end


	includedirs {
		core_includedirs,
		default_includedirs,
	}

	files {
		"../src/core/**.h",
		"../src/core/**.hpp",
		"../src/core/**.c",
		"../src/core/**.cpp",
	}

	buildoptions {
		cpp11_buildoptions,
	}

	linkoptions {
		cpp11_linkoptions,
	}
