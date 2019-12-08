#include <iostream>
#include <string>

using namespace std;
const int SLIM = 1e5;
int n;

int main()
{
//    freopen("tests/00", "r", stdin);
    cin >> n;
    int a[SLIM]{};
    int q[SLIM]{};
    int m[SLIM]{};
    for (int i = 0; i < n; i++){
        string s;
        cin >> s;
        for (unsigned int j = 0; j < s.length(); j++){
            int k = 26 * j + (s[j] - 'a');
            a[k] += 1;
            q[j] ++;
            if (a[k] > m[j])
                m[j] = a[k];
        }
    }
    int sum = 0;
    for (int i = 0; i < SLIM; i++)
        sum += (q[i] - m[i]);

    cout << sum;
    return 0;
}
