#include "core-wrapper.h"
#include "core/core.hpp"
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
