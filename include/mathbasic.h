#ifndef MATHBASIC_H
#define MATHBASIC_H

namespace mbasic
{
	class mathBasic
	{
	public:
		mathBasic();
		~mathBasic();

		static int add(int v1, int v2);

		static int dif(int v1, int v2);

		static int mux(int v1, int v2);

		static int div(int v1, int v2);
	};
}

#endif