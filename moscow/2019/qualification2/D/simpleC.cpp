#include <iostream>
#include <algorithm>

using namespace std;
int N, K;

int main()
{
    freopen("tests/00", "r", stdin);
    cin >> N >> K;
    int *a = new int[N];
    for (int i = 0; i < N; i++)
        cin >> a[i];

    int t[K];
    int m = (K - 1) / 2;
    for (int i = 0; i < (N-K+1); i++){
        for (int j = 0; j < K; j++)
            t[j] = a[i+j];
        sort(t, t + K);
        cout << t[m] << ' ';
    }

    return 0;
}
