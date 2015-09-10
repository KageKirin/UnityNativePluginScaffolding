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

project "core-test"
	kind "ConsoleApp"
	language "C++"
	flags {}

	defines {
		default_defines,
	}

	includedirs {
		core_includedirs,
		default_includedirs,
	}

	files {
		"../src/core-test/**.h",
		"../src/core-test/**.hpp",
		"../src/core-test/**.c",
		"../src/core-test/**.cpp",
	}

	links {
		"core",
	}

	buildoptions {
		cpp11_buildoptions,
	}

	linkoptions {
		cpp11_linkoptions,
	}
