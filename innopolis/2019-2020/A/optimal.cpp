#include <iostream>
#include <algorithm>

using namespace std;
int a, b, x;

int main()
{
    freopen("tests/00", "r", stdin);
    cin >> a >> b >> x;

    int k = __gcd((b * x),(100 - x) * a);
    int i = (b * x) / k;
    int j = (100 - x) * a / k;
    int u = (a * i + b * j);
    cout << (1000 / u) * u << endl;
    return 0;
}
