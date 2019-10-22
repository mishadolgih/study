#include <iostream>
#include <ctime>
 #include <cstdlib>

using namespace std;

int main(int argc, char *argv[])
{
    srand( time(0) * stoi(argv[3]));
    int N = stoi(argv[1]);
    cout << N << endl;
    for (int i = 0; i < N; i++)
        cout << rand() % stoi(argv[2]) << " " << rand() % stoi(argv[2]) << endl;
    return 0;
}
