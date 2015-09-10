#include "core.hpp"
#include <iostream>

int main(int argc, char** argv)
{
	core::CorePrint corePrintInstance(std::cout);
	corePrintInstance.print("Hello World");
	return 0;
}
