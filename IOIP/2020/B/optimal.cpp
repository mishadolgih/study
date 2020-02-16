#include <iostream>
#include <algorithm>
#include <vector>
//#define first X
//#define second Y

using namespace std;
int n, m, k;
int main()
{
//    freopen("tests/00", "r", stdin);
    int b;
    cin >> n >> m >> k;
    vector<pair<int, int>>a;
    for (int i = 0; i < n; i++){
        cin >> b;
        pair<int, int>c = {b, i};
        a.push_back(c);
    }

    sort(a.begin(), a.end());

    vector<pair<int, int>>::iterator it = a.end() - 1;
    int i = 1;
    while (i < k){
        cout << (*(it - i)).second + 1 << " ";
        ++i;
    }
    int r = (*it).first;
    i = 1;
    while (r == (*(it - i)).first)
        i++;

    for(int j = 0; j <(m - k + 1)/i; j++)
        for(int j1 = 0; j1 <i; j1++)
            cout << (*(it - j1)).second + 1 << " ";
    for(int j = 0; j <(m - k + 1)%i; j++)
        cout << (*(it - j)).second + 1 << " ";

    return 0;
}
