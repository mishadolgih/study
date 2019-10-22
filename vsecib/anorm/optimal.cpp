#include <iostream>
#include <algorithm>
#include <string>
using namespace std;
long long K, T;
int N;
string s;
int *a = new int[N];

int main()
{

    cin >> N >> K >> T;
    for ( int i = 0; i < N; i++){
        cin >> s;
        a[i] = stoi(s.substr(0, 3)) * stoi(s.substr(4));
    }
    sort(a, a+N);
    int q =0;
    long long m = 0;
    while ((m + a[q] <= T * K) && (q < N) ){
        m = m + a[q];
        q +=1;
    }
    cout << q << endl;
    return 0;
}
