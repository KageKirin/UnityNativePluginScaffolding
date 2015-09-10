--- main premake/genie file for 'PluginScaffolding' solution

--dofile "toolchain.lua"
dofile "functions.lua"
dofile "options.lua"
dofile "settings.lua"

---

solution "Plugin"
	location "../.build/projects"
	targetdir(target_dir)

	configurations { "Release", "Debug" }
	configuration {}

	-- gather globals
	--create_project = false
	--build_canaries = false
	--include "thirdparty"
	-- done gathering globals

	flags {
		"Symbols",
	}

	defines {
		default_defines,
	}

	includedirs {
		default_includedirs,
	}

	libdirs {
		default_libdirs,
	}

	linkoptions {
		default_linkoptions
	}

if isMacBuild() then
	--xcodebuildsettings {
	--	default_xcodebuildsettings,
	--}
end

if _OPTIONS.with_unittest ~= nil then
	print " with flag 'WITH_UNIT_TEST'"
	defines {
		"WITH_UNIT_TEST"
	}
end

	configuration "Debug"
		defines {
		}

	configuration "Release"
		defines {
		}

		flags {
			"ExtraWarnings",
			"Optimize",
		}

	configuration {}
---

-- create projects
dofile "core.project.lua"
dofile "core-wrapper.project.lua"
dofile "core-plugin.project.lua"

--create_project = true
--build_canaries = true
--include "thirdparty"
--include "canaries"
