#include <iostream>

using namespace std;
int n;
int main()
{
//    freopen("tests/01", "r", stdin);
    cin >> n;
    int b = 0;
    int m = 0;
    char *a = new char[n];
    for (int i = 0; i < n; i++){
        cin >> a[i];
        if(((a[i] <= 90) && (a[i] >= 65)) || (a[i] == 33) || (a[i] == 63) || (a[i] == 36) || (a[i] == 40) || (a[i] == 41))
            if (b == 0){
                m += 2, b = 1;
            }
            else
                m += 1;
        else
            if (a[i] == 32)
                m += 1;
            else{
                m += 1, b = 0;
            }
    }
    cout << m;
    return 0;
}
