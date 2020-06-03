#include <iostream>
#include <algorithm>
#define X first
#define Y second

using namespace std;

int main(){
    int N, x;
    int m17o = 0, m17e = 0, mo = 0, me = 0;
    cin >> N;
    for (int i = 0; i < N; i++){
        cin >> x;
        if ((x%34 == 0) && (x>= m17e)){
            if (m17e >= me)
                me = m17e;
            m17e = x;
        }
        if ((x% 34 == 0) && (x < m17e) && (x >= me))
            me = x;
        if ((x % 2 == 0) && (x % 17 != 0) &&(x >= me))
            me = x;

        if ((x%2 != 0) && (x % 17 == 0) && (x>= m17o)){
            if (m17o >= mo)
                mo = m17o;
            m17o = x;
        }
        if ((x%2 != 0) && (x % 17 == 0) && (x < m17o) && (x >= mo))
            mo = x;
        if ((x % 2 != 0) && (x % 17 != 0) &&(x >= mo))
            mo = x;
    }
    pair<int, int> a = (m17o * mo == 0) ? make_pair(0,0): make_pair(m17o, mo);
    pair<int, int> b = (m17e * me == 0) ? make_pair(0,0): make_pair(m17e, me);
    pair<int, int> c = (a.X +a.Y > b.X + b.Y) ? a : b;

    cout << c.X << " " << c.Y;
    return 0;
}
