# Unity Native Plugin scaffolding

Scaffolding for a Native Unity Plugin wirtten in C/C++ and wrapped P/Invoke to C#

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
