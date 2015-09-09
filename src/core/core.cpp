#include "core.hpp"

using namespace core;

CorePrint::CorePrint(std::ostream& os) : m_os(os)
{
}

void CorePrint::print(const std::string& message)
{
	m_os << message << std::endl;
}
