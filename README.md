# Unity Native Plugin scaffolding

Scaffolding for a Native Unity Plugin written in C/C++ and wrapped P/Invoke to C#.

Will eventually get extended to also provide an UnrealEngine plugin.

## The idea

This project should provide a starting point for cross-platform and cross-engine plugin development,
that allows for easy project customization,
so that developers can start coding their native plugin in a re-usable manner.

Simply said:
write 1 set of game code only once, and in a way that can be re-used in either engine.


## Status

Just started.

## Using this on your own code

Simply fork/clone this repo, and start modifying  
- the code in src/
- the project files in scaffolding/

## In detail

This project is using GENie to generate the project files.
(GENie is a fork of premake4.4).
The meta-project files are the lua files in scaffolding/
`solution.lua` is the entry point.

There are 2 projects:
- _core_, which represents the core functionality written in C++ (or C) as you like.
- _unity-plugin_, which represents the P/Invoke-compatible layer which exposes DLL functions as simple C methods.

## More detail coming ...


## Reference links

http://docs.unity3d.com/Manual/Plugins.html
http://docs.unity3d.com/Manual/PluginInspector.html
http://docs.unity3d.com/Manual/NativePlugins.html
http://docs.unity3d.com/Manual/NativePluginInterface.html
http://docs.unity3d.com/Manual/PluginsForDesktop.html

https://docs.unrealengine.com/latest/INT/Programming/Plugins/index.html
https://wiki.unrealengine.com/An_Introduction_to_UE4_Plugins
https://wiki.unrealengine.com/Category:Plug-ins
