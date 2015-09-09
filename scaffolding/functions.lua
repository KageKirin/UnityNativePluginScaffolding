-- helper functions

function isMacBuild()
	return _ACTION == 'xcode3'
		or _ACTION == 'xcode4'
end


function isWinBuild()
	return _ACTION == 'vs2002'
		or _ACTION == 'vs2003'
		or _ACTION == 'vs2005'
		or _ACTION == 'vs2008'
		or _ACTION == 'vs2010'
		or _ACTION == 'vs2012'
		or _ACTION == 'vs2013'
		or _ACTION == 'vs2015'
end


function isLinuxBuild()
	return  _ACTION == 'gmake'
		and os.is('linux')
end
----

-- special function to set define macros with string values
function stringMacroDeclaration(name, value)
	if _ACTION == 'xcode4' then
		return string.format('%s=\'%s\'', name, value)
	elseif _ACTION == 'makefile' then
		return string.format('%s="%s"', name, value)
	else
		return string.format('%s=%s', name, value)
	end
end

----

function correctPath(oldPath)
	local prj = project()
	local prjdir = os.getcwd()
	if prj ~= nil then
		prjdir = prj.basedir
	end

	local sln = solution()
	local slndir = sln.basedir

	if type(oldPath) == 'table' then
		local newPaths = {}
		for i, pPath in ipairs(oldPath) do
			table.insert(newPaths, correctPath(pPath))
		end
		return newPaths
	elseif oldPath == nil then
		return nil
	else
		local pathFromSlndir = slndir .. "/" .. oldPath
		local rep = path.getrelative(prjdir, pathFromSlndir)
		printf("rebased path: "..oldPath.." -> "..rep)
		return rep
	end
end

----

function currentDir()
	local sln = solution()
	local slndir = sln.basedir
	return path.getrelative(slndir, os.getcwd())
end

----

function printTable(t)
	for i, p in ipairs(t) do
		printf(p)
	end
end

----
