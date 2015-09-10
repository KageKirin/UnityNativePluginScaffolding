-- premake for core-plugin.project

project "core-plugin-test"
	kind "ConsoleApp"
	language "C#"
	flags {}


	files {
		"../src/core-plugin/*.cs",
		"../src/core-plugin-test/*.cs",
	}

	links {
		"core-wrapper",
	}
