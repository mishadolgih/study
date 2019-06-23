#include <iostream>
#include <cmath>

using namespace std;
int N, t;

int main()
{
    freopen("tests/00", "r", stdin);
    cin >> N;
    if (N == 1){
        cout << "1";
        exit(0);
    }
    int ans = N;
    int deg= 0;
    int p = N;
    while (p > 1){
        p /= 2;
        deg += 1;
    }
    int *res = new int[N - 1];
    int *d = new int[deg];

    for (int i = 0; i < N - 1; i++){
        cin >> t;
        res[i] = t;
    }
    for (int i = N - 1; i < 1; i++)
        if (res[N - 1] = 1){
            ans = ans / 2;
            } else
//        for (int j = 0; j < N / pow(2, i); j++)

    cout << "Hello world!" << endl;
    return 0;
}
