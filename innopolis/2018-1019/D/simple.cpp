#include <iostream>
#define ll long long

using namespace std;
int n, s, v;
int *a;

ll f(int i, int l, int m){
    if (m >= 0 && i <=n)    {
        for (int j = 0; j <= v; j++)

    }
    else
        return 0;

}

int main()
{
    freopen("tests/00", "r", stdin);
    cin >> n >> s >> v;
    a= new int[n];
    for(int i = 0; i < (n- 1); i++)
        cin >> a[i];

    cout << f(0, 0, s);

    return 0;
}
