#include <iostream>
#include <vector>
#include <set>
#define X first
#define Y second

using namespace std;
int n, k, *a;

int g(vector<pair<int, int>> v){
    int s = a[(*v.begin()).Y] - a[(*v.begin()).X];
    int r = (*v.begin()).Y;
    for(vector<pair<int, int>>::iterator it = ++(v.begin()); it != v.end(); ++it)
        if ((*it).Y > r){
            if ((*it).X > r){
                s += (a[(*it).Y] - a[(*it).X]);
                r = (*it).Y;
            }
            else{
                s += (a[(*it).Y] - a[r]);
                r = (*it).Y;
            }
        }
    v.clear();
    return s;


}
int f(set<int> s, vector<pair<int, int>> v){
    if (v.size() == unsigned(n)){
        if (k ==g(v))
            return 1;
        return 0;
    }
    int m = 0;
    for(set<int>::iterator it = ++(s.begin()); it != s.end(); ++it){
        int l = *s.begin();
        int r = *it;
        v.push_back(make_pair(l, r));
        s.erase(s.begin());
        s.erase(it);
        m = max(0, f(s, v));
    }
    return m;
}
int main()
{
    freopen("tests/00", "r", stdin);
    cin >> n >> k;
    a = new int[2*n];
    for (int i = 0; i < 2*n; i++)
            cin >> a[i];

    set<int> s;
    for (int i = 0; i < 2 * n; i++)
        s.insert(i);
    vector<pair<int, int>> v;
    if (f(s, v))
        cout << "YES";
    else
        cout << "NO";
    return 0;
}
