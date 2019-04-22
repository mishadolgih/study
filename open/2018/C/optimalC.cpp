#include <iostream>
#include <algorithm>

using namespace std;
long long p;
int n, k;

int main()
{
    //  freopen("tests/00", "r", stdin);
    cin >> n >> p >> k;
    int *a = new int[n];
    for (int i = 0; i < n; i++)
        cin >> a[i];

    long long m = 0;
    for (int i = 0; i < n; i++){
        m = m + (a[i] / k);
        a[i] = a[i] % k;
    }

    sort(a, a + sizeof a / sizeof a[0], greater<int>());

    for (int i = 0; i < n; i++){
        int d = k - a[i];
        if (p >= d) {
            m = m + 1;
            p = p - d;
        }
    }

    cout << m + p / k << endl;
    return 0;
}
