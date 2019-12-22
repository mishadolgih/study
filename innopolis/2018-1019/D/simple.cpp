#include <iostream>
#include <map>
#define ll long long

using namespace std;
int n, s, v;
int *a;

struct trio {int i, j, h;};
int idx(trio t) {return t.i*(s+1)*(v+1) + t.j*(v+1) + t.h;};
bool operator<(const trio& x, const trio& y){return idx(x) < idx(y);}
map<trio, ll> cache;


ll f(int i, int j, int h){
    if (j == 0)
        return 0;
    trio t = {i, j, h};
    if (cache.count(t) > 0)
        return cache[t];
    ll m = 1e18;
    for (int k = max(j -(n - i -1)*v, 0); k <= min(j, v); k++)
        m = min(m, (a[i]*k*h + f(i +1, j-k, k)));
    return cache[t] = m;
}

int main()
{
//    freopen("tests/02", "r", stdin);
    cin >> n >> s >> v;
    a= new int[n+1];
    for(int i = 1; i < n; i++)
        cin >> a[i];

    cout << f(0, s, 0);

    return 0;
}
