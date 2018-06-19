/**
* @file     mathbasic.h
* @brief    Declaração da biblioteca mathbasic
* @author   Leonardo Matos (matos_leo95@live.com)
* @since    17/06/2018
* @date	    18/06/2018
* @sa      https://github.com/matosleo/labs6-prog1
*/

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