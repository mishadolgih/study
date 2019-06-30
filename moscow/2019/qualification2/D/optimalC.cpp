#include <iostream>
#include <algorithm>
#include <cstring>
using namespace std;

int N, K;

int main()
{
    freopen("tests/22", "r", stdin);
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
        if (a[i - 1] != b[K - 1]){
            int *j = lower_bound(b, b + K - 1, a[i - 1]);
            memmove(b + *j - 1, b  + j, sizeof(int) * (K - j));
        }

        if (a[i + K - 1] <= b[0]){  // вставляем в начало
            memmove(b + 1, b, (sizeof(int) * (K - 1)));
            b[0]= a[i + K - 1];
        } else if (a[i + K - 1] >= b[K - 2]){ // вставляем в конец
            b[K - 1]= a[i + K - 1];
        } else{
        int *k = lower_bound(b, b + K , a[i + K - 1]);
        memmove(b + k, b + k - 1, sizeof(int) * (K - k));
        b[k]= a[i + K - 1];
        }
//            for (int t = 0; t < K; t++)
//            cout << b[t];
//        cout << "\n";

        cout << b[m] << " ";
    }
    return 0;
}
