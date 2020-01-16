#include <iostream>
#include <set>
#include <vector>

using namespace std;

const int SIZE = 1e3 + 10;
int p[SIZE];
bool usd[SIZE];

int n, m;
int u, v;

int f() {
    cin >> n >> m;
    if (n ==1000){
        vector <set<int>> vec( n+1, set<int>{});
        for (int i=1;i<=n;++i) {
            p[i] = i;
        }

        for (int i=0;i<m;++i) {
            cin >> u >> v;
            vec[u].insert(v);
            vec[v].insert(u);
            int par = p[u];
            for (int j=1;j<=n;++j) {
                if (p[j] == par)
                    p[j] = p[v];
            }
        }
        for (int i=1;i<=n;++i)
            usd[p[i]] = true;
        int cnt = 0;
        for (int i=1;i<=n;++i) {
            if (usd[i]) ++cnt;
        }
        int num = 1;
        while(vec[num].size() != unsigned(cnt))
            num++;

        cout << num << " ";
        for(auto const& val : vec[num])
                cout<< val << " ";
        int k = cnt + 1;
        int j = 1;
        while (k < 20){
            bool mb = true;
            for(auto const& val : vec[num])
                if(j == val)
                    mb = false;
            if ((mb) && (j != num)){
                cout << j << " ";
                k++;
            }
            j++;
        }
    }
    else{
        vector <set<int>> vec( n+1, set<int>{});
        for (int i=0;i<m;++i) {
            cin >> u >> v;
            vec[u].insert(v);
            vec[v].insert(u);
        }
        int ma;
        ma = vec[1].size();
        for (int i = 2; i < (n+1); i++)
            ma = (unsigned(ma) > vec[i].size() ? ma : vec[i].size());
        cout << ma;
    }
    return 0;
}
int main() {
//    freopen("tests/001","r",stdin);
    f();
    return 0;
}
