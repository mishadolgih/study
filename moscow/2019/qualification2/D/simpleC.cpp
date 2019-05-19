#include <iostream>
#include <algorithm>
#include <math.h>


using namespace std;
long long N, K;

int main()
{
//   freopen("tests/00", "r", stdin);
    cin >> N >> K;
    long long *a = new long long[N];
    for (long long i = 0; i < N; i++)
        cin >> a[i];

    long long sum = 0;
    for (long long i = 0; i < K; i++)
        sum = sum + a[i];
    cout << round((double)sum / K) << ' ';

    for (long long i = 1; i < (N+1-K); i++){
        sum = sum - a[i-1] + a[i + K - 1];
        cout << round((double)sum / K) << ' ';
    }

    return 0;
}
