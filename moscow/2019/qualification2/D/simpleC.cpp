#include <iostream>
#include <algorithm>
#include <math.h>


using namespace std;
int N, K;

int main()
{
   freopen("tests/02", "r", stdin);
    cin >> N >> K;
    long long *a = new long long[N];
    for (int i = 0; i < N; i++)
        cin >> a[i];

//    sort(a, a+K);
//    for (int i = 1; i < (N + 1 + K); i ++)
//
//    for (long long i = 0; i < K; i++)
//        sum = sum + a[i];
//    cout << round((double)sum / K) << ' ';
//
//    for (long long i = 1; i < (N+1-K); i++){
//        sum = sum - a[i-1] + a[i + K - 1];
//        cout << round((double)sum / K) << ' ';
//    }
    long long m = a[0];
    for (int i = 1; i < N; i++)
        m = max(m, a[i]);
    cout << m;

    return 0;
}
