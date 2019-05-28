#include <iostream>
#include <ctime>
//#include "stdafx.h"
 #include <cstdlib>


using namespace std;

int main(int argc, char *argv[])
{
    srand( time( 0 ) * stoi(argv[3]));
    int N = 1 + 2 * (rand() % stoi(argv[1]));
    cout << N <<'\n';
    cout <<  N / 4 * 2 + 1 << '\n';
    int k = stoi(argv[2]);
    for ( int i = 0; i < N; i ++)
          cout << rand() % k << ' ';
    return 0;
}
