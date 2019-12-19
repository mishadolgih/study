#include <iostream>
#define ll long long

using namespace std;
ll m = 1000000000000000000;
int n, s, v;
int *a;

ll f(int i, int j, int h){
    if (j == 0){
        cout << i << ' ' << j << ' ' << h << endl;
        return 0;
    }

    else
    for (int k = max(j -(n - i -1)*v, 0); k <= min(j, v); k++){
        cout << i << ' ' << j << ' ' << h << endl;
        return (a[i]*k*h + f(i +1, j-k, k));
    }

}

int main()
{
    freopen("tests/02", "r", stdin);
    cin >> n >> s >> v;
    a= new int[n+1];
    for(int i = 1; i < n; i++)
        cin >> a[i];

    cout << f(0, s, 0);

    return 0;
}
