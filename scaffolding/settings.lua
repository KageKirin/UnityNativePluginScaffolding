--- common settings for 'PluginScaffolding'

-----
-- /!\ global settings. modifying will force a full rebuild!

default_defines = {}
default_includedirs = {}

default_libdirs = {
	"../.build/bin",
	"../.build/lib",
	target_dir,
}

default_linkoptions = {}
default_links = {}

default_xcodebuildsettings = {
	'SKIP_INSTALL = YES',
	'ARCHS = (x86_64)',		--(i386, x86_64)
	'VALID_ARCHS = (x86_64)',	--(i386, x86_64)
}

---

if isWinBuild() then
	table.insert(default_defines, {
		"WIN32",
		"_CRT_SECURE_NO_WARNINGS",
	})

	table.insert(default_includedirs, {
	--	"thirdparty/unistd-win32",
	})

end


if isMacBuild() then
	table.insert(default_includedirs, {
		"/System/Library/Frameworks",
		"/Library/Frameworks",
	})

	table.insert(default_libdirs, {
		"/opt/X11/lib",
	})
end


if isMacBuild() or isLinuxBuild() then
	table.insert(default_links, {
	})
end
---

-- C++11 settings

cpp11_buildoptions = {}
cpp11_linkoptions = {}

if isMacBuild() then
	table.insert(cpp11_buildoptions, {
		"-std=c++11",
	})

	table.insert(cpp11_linkoptions, {
		"-stdlib=libc++",
	})
end



---
