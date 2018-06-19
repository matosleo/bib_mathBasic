/**
* @file     funcoes.cpp
* @brief    Implementação dos  métodos da biblioteca mathbasic
* @author   Leonardo Matos (matos_leo95@live.com)
* @since    17/06/2018
* @date	    18/06/2018
* @sa      https://github.com/matosleo/labs6-prog1
*/

#include <iostream>
#include "mathbasic.h"

namespace mbasic
{	/**
	* @brief	Construtor
	*/
	mathBasic::mathBasic(){}
	/**
	* @brief	Destrutor
	*/
	mathBasic::~mathBasic(){}

	/**
	* @brief	Método que retorna a soma de dois numeros inteiros
	* @params	int v1 número inteiro
	* @params	int v2 número inteiro
	* @return	A soma de v1 e v2, um numero inteiro
	*/
	int mathBasic::add(int v1, int v2)
	{
		return v1 + v2;
	}

	/**
	* @brief	Método que retorna a diferença de dois numeros inteiros
	* @params	int v1 número inteiro
	* @params	int v2 número inteiro
	* @return	A diferença de v1 e v2, um numero inteiro
	*/
	int mathBasic::dif(int v1, int v2)
	{
		return v1 - v2;
	}

	/**
	* @brief	Método que retorna a multiplicação de dois numeros inteiros
	* @params	int v1 número inteiro
	* @params	int v2 número inteiro
	* @return	A multiplicação de v1 e v2, um numero inteiro
	*/
	int mathBasic::mux(int v1, int v2)
	{
		return v1 * v2;
	}

	/**
	* @brief	Método que retorna a divisão de dois numeros inteiros
	* @params	int v1 número inteiro
	* @params	int v2 número inteiro
	* @return	A divisão de v1 e v2, um numero inteiro
	*/
	int mathBasic::div(int v1, int v2)
	{
		if(v2 > 0)
		{
			return v1 / v2;
		}
		else
		{
			return -1;
		}
	}
}