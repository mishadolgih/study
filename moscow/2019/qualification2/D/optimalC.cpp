#include <iostream>
#include <algorithm>

using namespace std;
int N, K;

int main()
{
//   freopen("tests/00", "r", stdin);
    cin >> N >> K;
    int a[N], b[K];
    for (int i = 0; i < N; i++)
        cin >> a[i];

    int m = (K - 1) / 2;
    for (int i = 0; i < K; i++)
        b[i] = a[i];
    sort(b, b + K);
    cout << b[m] << " ";


    for (int i = 1; i < (N - K + 1); i++){
        int j = 0;
        while (b[j] != a[i - 1])
            j++;
        for (int i = j; i < (K - 1); ++i)
            b[i] = b[i + 1];

        int k = 0;
        while ((b[k]<a[i + K - 1]) && (k < (K - 1)))
            k++;
        for (int j = K; j > k; j--)
            b[j]=b[j-1];
        b[k]= a[i + K - 1];
        cout << b[m] << " " ;
    }
    return 0;
}
