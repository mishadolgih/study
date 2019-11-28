#include <iostream>

using namespace std;
int a, b, x;

int main()
{
//    freopen("tests/00", "r", stdin);
    cin >> a >> b >> x;

    int n = 1, m = 1;
    float t = 100 * (float)a / ((float)b + (float)a);
    while ((n * a + m * b <= 1000) && (t != (float)x)){
        if (t < (float)x)
            n = n + 1;
        else
            m = m + 1;
        t = 100 * (float)a * n / ((float)b * m + (float)a * n);
    }
    if (t != (float)x)
        cout << 0;
    else
        cout << 1000 / (a * n + b * m) * (a * n + b * m);
    return 0;
}
