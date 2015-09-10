-- premake for core-wrapper.project

corewrapper_includedirs = {
	"../src/core-wrapper",
}


project "core-wrapper"
	kind "SharedLib"
	language "C++"
	flags {}

	defines {
		default_defines,
	}

	includedirs {
		corewrapper_includedirs,
		default_includedirs,
	}

	files {
		"../src/core-wrapper/*.h",
		"../src/core-wrapper/*.hpp",
		"../src/core-wrapper/*.c",
		"../src/core-wrapper/*.cpp",
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


project "core-wrapper-test"
	kind "ConsoleApp"
	language "C"
	flags {}

	defines {
		default_defines,
	}

	includedirs {
		unityplugin_includedirs,
		default_includedirs,
	}

	files {
		"../src/core-wrapper-test/*.h",
		"../src/core-wrapper-test/*.hpp",
		"../src/core-wrapper-test/*.c",
		"../src/core-wrapper-test/*.cpp",
	}

	links {
		"core-wrapper",
		default_links
	}

--	buildoptions {
--		cpp11_buildoptions,
--	}

--	linkoptions {
--		cpp11_linkoptions,
--	}
