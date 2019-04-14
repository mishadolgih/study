#include <iostream>

using namespace std;

int main()
{
     //  freopen("tests/00", "r", stdin);
    long long p, m;
    int n, k;
    cin >> n >> p >> k;
    int *A = new int[n];
    for (int i = 0; i < n; i++){
        cin >> A[i];
    }

    m = 0;
    for (int i = 0; i < n; i++){
        m = m + (A[i] / k);
        A[i] = A[i] % k;
    }
     for (int i = 0; i < (n - 1); i++){
        int max = i;
        for (int j = i + 1; j < n; j++){
            if (A[j] > A[max]) {
                max = j;
            }
            int t = A[i];
            A[i] = A[max];
            A[max] = t;
        }
     }
     for (int i = 0; i < n; i++){
        int d = k - A[i];
        if ((p >= d) and (p - d >= 0)) {
            m = m + 1;
            p = p - d;
        }
     }

     if (p > 0)
        m = m + p / k;

    cout << m << endl;
    return 0;
}
