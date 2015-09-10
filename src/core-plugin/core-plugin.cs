using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;

namespace core
{
	public class Plugin
	{
		[DllImport("core-wrapper.dll")]
		public static extern void printHello();

		[DllImport("core-wrapper.dll")]
		public static extern void printMessage(string str);
	}
}
