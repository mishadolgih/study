#include <iostream>
#include <cmath>

using namespace std;
int N, t;

int main()
{
//    freopen("tests/00", "r", stdin);
    cin >> N;
    if (N == 1){
        cout << "1";
        exit(0);
    }

    int deg= 0;
    int p = N;
    while (p > 1){
        p /= 2;
        deg += 1;
    }
    int *a = new int[N / 2];

    for (int i = 0; i < N / 2; i++){
        cin >> t;
        a[i] = i * 2 + t;
    }
    for (int i = 2; i <= deg; i++)
        for (int j = 0; j < N / pow(2, i); j++){
            cin >> t;
            if (t == 1)
                a[j] = a[2 * j];
            else a[j] = a[2 * j + 1];
        }
    cout << a[0] << endl;
    return 0;
}
