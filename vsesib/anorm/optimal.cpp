#include <iostream>
#include <algorithm>
#include <utility>
//#define time.first
//#define time.first y

using namespace std;
long long k, t;
int n, *data;




int main()
{
    freopen("tests/01", "r", stdin);
    cin >> n >> k >> t;
    data = new int[n];

    int a, b;
    char c;
    for ( int i = 0; i < n; i++){
        cin >> a >> c >> b;
        data[i] = a * b;
    }
    sort(data, data+n);
    long long rem = 0;
    int q = 0;
    for ( int i = 0; i < n; i++){
        if (rem - (data[i] % t) >= 0){
            k = k - data[i] / t;
            rem = rem - (data[i] % t);
        }
        else {
            k = k - data[i] / t - 1;
            rem = t - data[i] % t;
        };
        if (k >= 0)
            q += 1; else
            break;
    }
    cout << q << endl;
    return 0;
}
