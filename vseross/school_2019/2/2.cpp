#include <iostream>

using namespace std;
int a, b;

int main()
{
    cin >> a >> b;

    if ((a % 2 == 0) && (b % 2 == 0))
        cout << b - (b - a) / 2;
    else if ((a % 2 == 0) && (b % 2 == 1))
        cout << -1 * (1 + b - a) / 2;
    else if ((a % 2 == 1) && (b % 2 == 0))
        cout <<(1 + b - a) / 2;
    else if ((a % 2 == 1) && (b % 2 == 1))
        cout << -1 * (b -(b - a) / 2);
    return 0;
}
