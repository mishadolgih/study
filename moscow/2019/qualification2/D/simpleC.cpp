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
    for (int i = 0; i < (N-K+2); i++){
        for (int j = i; i < (i+K); i++)
            t[j] = a[j];
        sort(t, t + K - 1);
        int m = (i + (i + K - 1)) / 2;
        cout << t[m];
    }

    return 0;
}
