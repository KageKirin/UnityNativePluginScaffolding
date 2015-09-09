--- options for 'PluginScaffolding'

newoption {
	trigger 		= "target_dir",
	description = "overrides the default target dir to the given one"
}

newoption {
	trigger     = "with_unittest",
	description = "add global define WITH_UNIT_TEST to all projects"
}


target_dir = "../.build/bin"

if _OPTIONS["target_dir"] ~= nil then
	target_dir = _OPTIONS["target_dir"]
end
