#include <iostream>
#include <algorithm>
#include <cstring>
using namespace std;

int N, K;

int main()
{
    freopen("tests/00", "r", stdin);
    cin >> N >> K;
    int *a = new int[N];
    int *b = new int[K];
    for (int i = 0; i < N; i++)
        cin >> a[i];


    int m = (K - 1) / 2;
    memcpy(b, a, sizeof(int) * K);

    sort(b, b + K);
    cout << b[m] << " ";

    for (int i = 1; i < (N - K + 1); i++){
        int *j = lower_bound(b, b + K, a[i - 1]);
        memmove(b + *j, b  + *j - 1, sizeof(int) * K - *j - 1);

        int *k = lower_bound(b, b + K - 1, a[i + K - 1]);
        memmove(b + *k, b + *k - 1, sizeof(int) * K - *k);
        b[*k]= a[i + K - 1];
        cout << b[m] << " " ;
    }
    return 0;
}
