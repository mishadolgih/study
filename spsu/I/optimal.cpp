#include <iostream>
#include <set>
#include <queue>
#include <bitset>
#include <vector>

using namespace std;
#define X first
#define Y second

const int ORIGINAL_N = 1e3;
const int INDUCTED_N = 20;

int n, m;
vector<int> *g;

int components(){
    int q = 0;
    bitset<ORIGINAL_N> visited;
    set<int> unpending;
    for (int i = 0; i < n; i++)
        unpending.insert(unpending.end(), i);
    while (!unpending.empty()){
        int s = *(unpending.begin());
        queue<int> pending;
        pending.push(s), visited[s] = 1;
        while(!pending.empty()){
            int u = pending.front();
            pending.pop(), unpending.erase(u);
            for(int v : g[u])
                if (!visited[v])
                    pending.push(v), visited[v] = 1;
        }
        q++;
    }
    return q;
}

set<int> Alice(int x){
    int q = components();
    int i = 0;
    while (g[i].size() != unsigned(q))
        i++;
    set<int> ans;
    ans.insert(i);
    for (int j = 0; j < q; j++)
        ans.insert(g[i][j]);
    int j = 0;
    while(ans.size() != 20){
        if(g[j].size() != unsigned(q))
            ans.insert(j);
        j++;
    }
    return{ans};
}
int main() {
//    freopen("tests/001","r",stdin);
    cin >> n >> m;
    g = new vector<int> [n];
    for (int i = 0; i < m; i++){
        int u, v;
        cin >> u >> v;
        g[u - 1].push_back(v - 1);
        g[v - 1].push_back(u - 1);
    }
    pair<int, int> mp = {0, 0};
    for (int i = 0; i < n; i++)
        mp = max(mp, {g[i].size(), i});

    if (n == INDUCTED_N)
        cout << mp.X + 1;
    else
        for(int x : Alice(mp.Y))
            cout << x + 1 << " ";
    return 0;
}
