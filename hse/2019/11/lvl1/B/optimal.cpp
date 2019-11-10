#include <iostream>

using namespace std;
int n, p, q, *a;

int main()
{
//    freopen("tests/01", "r", stdin);
    cin >> n >> p >> q;
    a = new int[n + 1];
    for (int i = 0; i <= n; i++)
        cin >> a[i];
    a[n + 1] = 0;
    int i = 0, j = 0, x = 1, y = n;
    int u, v;
    if (a[0] == 1){
        u = 1;
        v = 0;
    } else {
        u = 0;
        v = 1;
    }

    while (j < n){
        if ((p <= u) && (q <= v) && (y - x > j  - i))
            x = i + 1, y = j + 1;
        if ((p <= u) && (q <= v)){
            if (a[i] == 1)
                u -= 1;
            else
                v -=1;
            i += 1;
        } else {
            j += 1;
            if (a[j] == 1)
                u += 1;
            else
                v +=1;
        }
    }


    cout << x << " " << y;
    return 0;
}
