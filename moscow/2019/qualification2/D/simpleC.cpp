#include <iostream>
#include <algorithm>

using namespace std;
int N, K;

int main()
{
//   freopen("tests/00", "r", stdin);
    cin >> N >> K;
    int a[N];
    for (int i = 0; i < N; i++)
        cin >> a[i];

    int m =  (K - 1) / 2;
    int b[K];
    for (int i = 0; i < (N + 1 - K); i++){
        for (int j = 0; j < K; j++)
            b[j] = a[j + i];
        sort(b, b + K);
        cout << b[m] << " ";
    }
    return 0;
}
