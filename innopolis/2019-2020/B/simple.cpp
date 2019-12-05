#include <iostream>
#include <string>

using namespace std;
int SLIM = 10e5;
int n;


int main()
{
    int a[100000] = {};
    int *sum = new int [n];
    int *m = new int [n];
    freopen("tests/00", "r", stdin);
    cin >> n;
    for (int i = 0; i < n; i++){
        sum[i] = 0;
        m[i] = 0;
    }
    int sm = 0;
    for (int i = 0; i < n; i++){
        string s;
        cin >> s;
        for (int j = 0; j < signed(s.length()); j++){
            a[26 * j + s[j] - 'a'] += 1;
            sum[j] = sum[j] + 1;
            if (a[26 * j + s[j] - 'a'] > m[j])
                m[j] = a[26 * j + s[j] - 'a'];
        }
    }
    for (int i = 0; i < 4; i++)
        sm += sum[i] - m[i];

    cout << sm;
    return 0;
}
