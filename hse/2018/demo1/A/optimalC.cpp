#include <iostream>
using namespace std;

    long long n, m;
    short a, b;

int optimal()
{
    long long x, r ,q, y;
    if (n >= m)
        return 0;
    if (4* a < b)
        return a * (m - n);
    r = (m - n) % 4;
    q = (m - n) / 4;
    if (r * a > b) {
        x = 0;
        y = q + 1;
    } else {
    x = r;
    y = q;
    }
    return (x * a + y * b);
}
int main()
{
    cin >> n >> m >> a >> b;
    cout << optimal();
    return 0;
}
