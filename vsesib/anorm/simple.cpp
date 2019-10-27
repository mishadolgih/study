#include <iostream>
#include <algorithm>
#include <string>
using namespace std;
long long k, t;
int n, *data;
string s;


int main()
{
//    freopen("tests/01", "r", stdin);
    cin >> n >> k >> t;
    data = new int[n];
    int a, b;
    char c;
    for ( int i = 0; i < n; i++){
        cin >> a >> c >> b;
        data[i] = a * b;
    }
    sort(data, data + n);
    int q =0;

    long long m = 0;
    while ((m + data[q] <= t * k) && (q < n) ){
        m = m + data[q];
        q +=1;
    }
    cout << q << endl;
    return 0;
}
