#include "unity-plugin.h"
#include "core.hpp"
#include <iostream>

void printHello()
{
	printMessage("Hello Plugin");
}

void printMessage(const char* message)
{
	using core::CorePrint;
	CorePrint cp(std::cout);
	std::string msg(message);
	cp.print(msg);
}
