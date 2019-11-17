#include <iostream>

using namespace std;

int n, p, q, *a;

int g(int i, int j, int b){
    int s = 0;
    for (int k = i; k <= j; k++)
        if (a[k] == b)
            s += 1;
    return s;
}

bool f(int i, int j){
    if ((g(i, j, 0) >= q) && (g(i, j, 1) >= p))
        return 1;
    else return 0;
}
int main()
{
//    freopen("tests/01", "r", stdin);
    cin >> n >> p >> q;
    a = new int[n + 1];
    for (int i = 0; i < n; i++)
        cin >> a[i];

    a[n] = 2;
    int x = 1;
    int y = n;
    for (int i = 0; i < n; i++)
        for (int j = i; j < n; j++)
            if ((f(i, j)) && (j - i < y - x))
                x = i, y = j;


    cout << x + 1 << " " <<  y + 1;
    return 0;
}
