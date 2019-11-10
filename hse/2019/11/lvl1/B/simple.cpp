#include <iostream>

using namespace std;

int n, p, q, *a;


int main()
{
//    freopen("tests/01", "r", stdin);
    cin >> n >> p >> q;
    a = new int[n + 1];
    for (int i = 0; i < n; i++)
        cin >> a[i];
    a[n + 1] = 0;
    int x = 1;
    int y = n;
    int u, v;

    for (int i = 0; i < n; i++){
        if (a[i] == 1){
            u = 1;
            v = 0;
        } else {
            u = 0;
            v = 1;
        }
        for (int j = i + 1; j < n; j++){
            if (a[j] == 1)
                u = u + 1;
            else
                v = v + 1;
            if ((p <= u) && (q <= v) && (y - x > j  - i))
                y = j + 1, x = i + 1;
            }
    }
    cout << x << " " <<  y;
    return 0;
}
