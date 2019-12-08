#include <iostream>
#include <algorithm>

using namespace std;
int a, b, x;

int main()
{
//    freopen("tests/00", "r", stdin);
    cin >> a >> b >> x;

    int i = (b * x) / __gcd((b * x),(100 - x));
    int j = ((100 - x)* a) / __gcd((b * x),(100 - x));
    int u = (a * i + b * j) / __gcd(i,j);
    cout << (1000 / u) * u << endl;
    return 0;
}
