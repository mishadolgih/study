#include <iostream>
#include <vector>
#include <set>
#define X first
#define Y second
#define mp make_pair

using namespace std;
int n, k, *a;
set<int> s;

set<pair<int, int>> v;

int g(){
    int s = 0;
    int r = 0;
    for(auto it = (v.begin()); it != v.end(); ++it){
        s += a[max((*it).Y, r)] - a[max((*it).X, r)];
        r = max((*it).Y, r);
    }
    return s;


}
int f(){
    if (s.empty())
        return g() == k;
    int l = *(s.begin());
    s.erase(s.begin());
    int m = 0;
    for(set<int>::iterator it = s.begin(); it != s.end(); ++it){
        int r = *it;
        s.erase(it);
        v.insert(mp(l, r));
        m += f();
        v.erase(mp(l, r));
        it = (s.insert(r)).X;
    }
    s.insert(l);
    return m > 0;
}
int main()
{
    freopen("tests/00", "r", stdin);
    cin >> n >> k;
    a = new int[2*n];
    for (int i = 0; i < 2*n; i++)
            cin >> a[i];

    for (int i = 0; i < 2 * n; i++)
        s.insert(i);
    cout << (f() ? "YES" : "NO");
    return 0;
}

