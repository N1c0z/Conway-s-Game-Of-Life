#include <string.h>
#include <ctype.h>
#include <stdbool.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <ctime>
#include <windows.h>
#include <string>

using namespace std;

struct Square {
	long PosX;
	long PosY;
};


const long TSIZEE = 40;
bool TABLE[TSIZEE][TSIZEE];
bool TABLE2[TSIZEE][TSIZEE];
vector<Square> LIVE_SQUARES;
vector<Square> LIVE_SQUARES2;
const char PrintableSquare = 171 + '0'; //206

bool CellExists(long PosX, long PosY);
void PrintTable();
void CreateRandomStartup();
void DoStuff();
long SurroundingCells(Square* square);
long SurroundingCells(long PosXX, long PosYY);
void GenerateNewCells(Square* square);
long SurroundingCells2(Square* square); 
long SurroundingCells2(long PosXX, long PosYY);


int main() {
	srand(time(NULL));
	cout << "Start?" << endl;
	getchar();
	cout << "Creating random data" << endl;
	CreateRandomStartup();
	cout << "starting simulation";
	PrintTable();

	while (true)
	{
		DoStuff();
		PrintTable();
		Sleep(1500);
	}
	return 0;
}

void CreateRandomStartup() {

	for (long i = 0; i < TSIZEE; i++)
	{
		for (long k = 0; k < TSIZEE; k++)
		{
			TABLE[i][k] = ( rand() % 2) && ( rand() % 2 ) && (rand() % 2);
			if (TABLE[i][k])
			{
				Square square;
				square.PosX = i;
				square.PosY = k;
				LIVE_SQUARES.insert(LIVE_SQUARES.end(), square);
			}
		}
	}

	for (size_t i = 0; i < TSIZEE; i++)
		for (size_t k = 0; k < TSIZEE; k++)
			TABLE2[i][k] = TABLE[i][k];

	//test
	/*
	for (size_t i = 0; i < 3; i++)
	{
		TABLE[10][10 + i] = true;
		Square square;
		square.PosX = 10;
		square.PosY = 10 + i;
		LIVE_SQUARES.insert(LIVE_SQUARES.end(), square);
	}
	*/
}
long SurroundingCells(Square* square) {
	long numOfCells = 0;
	long posx, posy;
	for (long i = -1; i < 2; i++)
	{
		posx = square->PosX + i;
		for (long k = -1; k < 2; k++)
		{
			posy = square->PosY + k;
			if (CellExists(posx, posy))
			{
				/*
				if (TABLE[posx][posy])
				{
					if (!(posx == square->PosX && posy == square->PosY))
					{
						__asm {
							add numOfCells, 1
						}
					}

				}
				*/
				__asm {
					mov ebx, posx
					mov esi, posy
					cmp TABLE[ebx][esi], 0
					je eend

					mov eax, square
					cmp ebx, [eax]Square.PosX
					je sus

					jmp actualstuff

					sus:
					
					cmp esi, [eax]Square.PosY
					je eend

					actualstuff:
					add numOfCells, 1
					eend:
				};
			}
		}
	}
	cout << (SurroundingCells2(square) == numOfCells ? 1 : 0);
	cout << endl;
	return numOfCells;
}
long SurroundingCells2(Square* square) {
	long numOfCells = 0;
	long posx, posy;
	for (long i = -1; i < 2; i++)
	{
		posx = square->PosX + i;
		for (long k = -1; k < 2; k++)
		{
			posy = square->PosY + k;
			if (CellExists(posx, posy))
			{
				if (TABLE[posx][posy])
				{
					if (!(posx == square->PosX && posy == square->PosY))
					{
						numOfCells++;
					}

				}
				
			}
		}
	}
	return numOfCells;
}
long SurroundingCells2(long PosXX, long PosYY) {
	long numOfCells = 0;
	long posx, posy;
	for (long i = -1; i < 2; i++)
	{
		posx = PosXX + i;
		for (long k = -1; k < 2; k++)
		{
			posy = PosYY + k;
			if (CellExists(posx, posy))
			{
				if (TABLE[posx][posy])
				{
					if (!(posx == PosXX && posy == PosYY))
					{
						numOfCells++;
					}

				}
			}
		}
	}
	return numOfCells;
}
long SurroundingCells(long PosXX, long PosYY) {
	long numOfCells = 0;
	long posx, posy;
	for (long i = -1; i < 2; i++)
	{
		posx = PosXX + i;
		for (long k = -1; k < 2; k++)
		{
			posy = PosYY + k;
			if (CellExists(posx, posy))
			{
				/*
				if (TABLE[posx][posy])
				{
					if (!(posx == PosXX && posy == PosYY))
					{
						__asm {
							add numOfCells, 1
						}
					}

				}
				*/
				__asm {
					mov ebx, posx
					mov esi, posy
					cmp TABLE[ebx][esi], 0
					je eend

					mov eax, PosXX
					cmp ebx, eax
					je sus

					jmp actualstuff

					sus :
					mov eax, PosYY
					cmp esi, eax
					je eend

					actualstuff :
					add numOfCells, 1
					eend :
				};
			}
		}
	}
	cout << (SurroundingCells2(PosXX, PosYY) == numOfCells ?  1 : 0);
	cout << endl;
	return numOfCells;
}
void DoStuff() {
	//start stuff
	

	
	//end of start

	long stuff;
	for (size_t i = 0; i < LIVE_SQUARES.size(); i++)
	{
		stuff = SurroundingCells(&LIVE_SQUARES[i]);
		if ((stuff != 2) && (stuff != 3))
		{
			TABLE2[LIVE_SQUARES[i].PosX][LIVE_SQUARES[i].PosY] = false;
		}
		else 
		{
			LIVE_SQUARES2.insert(LIVE_SQUARES2.end(), LIVE_SQUARES[i]);
		}
	}
	for (size_t i = 0; i < LIVE_SQUARES.size(); i++)
	{
		GenerateNewCells(&LIVE_SQUARES[i]);
	}

	for (size_t i = 0; i < TSIZEE; i++)
		for (size_t k = 0; k < TSIZEE; k++)
			TABLE[i][k] = TABLE2[i][k];

	LIVE_SQUARES.clear();
	LIVE_SQUARES.shrink_to_fit();

	LIVE_SQUARES = LIVE_SQUARES2;

	LIVE_SQUARES2.clear();
	LIVE_SQUARES2.shrink_to_fit();
}



void GenerateNewCells(Square* square) {
	long posx, posy;
	for (long i = -1; i < 2; i++)
	{
		posx = square->PosX + i;
		for (long k = -1; k < 2; k++)
		{
			posy = square->PosY + k;
			if (CellExists(posx, posy))
			{
				if (!TABLE2[posx][posy])
				{
					if (SurroundingCells(posx, posy) == 3)
					{
						Square cSquare;
						cSquare.PosX = posx;
						cSquare.PosY = posy;
							TABLE2[posx][posy] = true;
						LIVE_SQUARES2.insert(LIVE_SQUARES2.end(), cSquare);
					}
				}
			}
		}
	}
	return;
}

void PrintTable() {

	system("CLS"); //to clean console

	for (size_t i = 0; i < TSIZEE; i++)
	{
		for (size_t k = 0; k < TSIZEE; k++)
		{
			if (TABLE[i][k])
			{
				cout << PrintableSquare << PrintableSquare;
			}
			else
			{
				cout << "  ";
			}
		}
		cout << "\n";
	}
	cout << endl;
}

bool CellExists(long PosX, long PosY) {

	if (PosX < 0 || PosY < 0 || PosX >= TSIZEE || PosY >= TSIZEE)
	{
		return false;
	}
	return true;
}