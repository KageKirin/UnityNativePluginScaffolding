using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
//using core.Plugin;

namespace core_plugin_test
{
	class TestRunner
	{
		static void Main(string[] args)
		{
			core.Plugin.printHello();
			core.Plugin.printMessage("Hello from C#");
		}
	}
}
