#include <iostream>
#include "mathbasic.h"
#include <string>

using namespace mbasic;
using namespace std;


int main(int argc, char const *argv[])
{
	mathBasic lib;
	
	int a = 8, b = 0;

	cout << "adição " << a << " por " << b << ": " << lib.add(a,b) << endl;
	cout << "subtração " << a << " por " << b << ": " << lib.dif(a,b) << endl;
	cout << "multiplicação " << a << " por " << b << ": " << lib.mux(a,b) << endl;
	if(lib.div(a, b) > 0)
	{
		cout << "divisão " << a << " por " << b << ": " << lib.div(a, b) << endl;
	}
	else
	{
		cout << "divisão inválida" << endl;
	}

	return 0;
}