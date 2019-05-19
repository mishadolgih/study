#include <iostream>
#include <ctime>
//#include "stdafx.h"
 #include <cstdlib>


using namespace std;

int main(int argc, char *argv[])
{
    srand( time( 0 ) );
    int N = 1 + rand() % stoi(argv[1]);
    cout << N <<endl;
    cout << 1 + rand() % stoi(argv[1]) / 2 << endl;
    for ( int i = 0; i < N; i ++)
          cout << rand() % stoi(argv[2]);
    return 0;
}
