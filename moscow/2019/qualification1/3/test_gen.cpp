#include <iostream>
#include <ctime>
 #include <cstdlib>
 #include <math.h>
 #include <string>


using namespace std;

int main(int argc, char *argv[])
{
    srand( time( 0 ) * stoi(argv[2]));
    int N = pow(2, stod(argv[1]));
    cout << N <<'\n';
    for ( int i = 0; i < (N - 1); i ++)
          cout << 1 + (rand() % 2) << '\n';
    return 0;
}
