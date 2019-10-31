#include <iostream>

using namespace std;
int h, a, b;

int main()
{
    cin >> h >> a >> b;
    if (h - a + b < 0)
        cout << h - a + b + 24;
    else if (h - a + b >= 24)
        cout << h - a + b - 24;
    else
        cout << h - a + b;
    return 0;
}
