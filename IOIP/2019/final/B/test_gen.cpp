#include <iostream>
#include <ctime>
 #include <cstdlib>

using namespace std;

int main(int argc, char *argv[])
{
    srand( time(0) * stoi(argv[3]));
    int N = stoi(argv[1]);
    int n = stoi(argv[2]) - (rand() % stoi(argv[2])) / 2;
    int m = stoi(argv[2]) - (rand() % stoi(argv[2])) / 2;
    cout << N << " " << n << " " << m << endl;
    for (int i = 0; i < n; i++)
        cout << 1 + rand() % (N / 4) << " ";
    cout << endl;
    for (int i = 0; i < m; i++)
        cout << 1 + rand() % (N / 4) << " ";
    return 0;
}
