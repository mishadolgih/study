#include <iostream>
#define ll long long

using namespace std;
int n, k, *a, *b;

ll f(int i, int j, int h){
    ll ans;
    if (i <= n)
    else if (j == k)dd
        return ans;
    else
        return 1000000000000000;
    switch(h)
        {
        case 0:
            ans = ans + f(i + 1, j, 0);
            ans = ans + f(i + 1, j - 1, 1);
            ans = ans + f(i + 1, j - 1, 2);
            ans = ans + f(i + 1, j - 1, 3);
            break;
        case 1:
            ans = ans + b[i] + b[i - 1] + f(i + 1, j, 0);
            ans = ans + b[i] + b[i - 1] + f(i + 1, j - 1, 2);
            break;
        case 2:
            ans = ans + a[i] + a[i - 1] + f(i + 1, j, 0);
            ans = ans + a[i] + a[i - 1] + f(i + 1, j - 1, 1);
            break;
        case 3:
            ans = ans + a[i] + b[i] + f(i + 1, j, 0);
            ans = ans + a[i] + b[i] + f(i + 1, j - 1, 3);
            break;
        }
}
int main()
{
    freopen("tests/00", "r", stdin);
    cin >> n >> k;
    a = new int[n], b = new int[n];
    for (int i = 0; i < n; i++)
        cin >> a[i] >> b[i];

    cout << f(1, k, 3);

    return 0;
}

