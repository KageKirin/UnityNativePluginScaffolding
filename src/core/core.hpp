#ifndef CORE_HPP
#define CORE_HPP 1

#include <iostream>
#include <string>

namespace core
{
	class CorePrint
	{
	public:
		CorePrint(std::ostream& os);
		void print(const std::string& message);

	private:
		std::ostream& m_os;
	};
}	// namespace core

#endif /* end of include guard: CORE_HPP */
