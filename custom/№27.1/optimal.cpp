#include <iostream>
#define X first
#define Y second
using namespace std;
int n, x, m17o, m17e, mo, me;


int main(){
    cin >> n;
    for (int i = 0; i < n; i++){
        cin >> x;
        if (x%2 == 0){
            if((x% 17 == 0) && (x>= m17e))
                me = max(me, m17e), m17e = x;
            else
                me= max(me, x);
        }            if (m17e >= me)
        if (x%2 == 1){
            if((x% 17 == 0) && (x>= m17o))
                mo = max(mo, m17o), m17o = x;
            else
                mo= max(mo, x);
        }
    }
    pair<int, int> a = (m17o * mo == 0) ? make_pair(0,0): make_pair(m17o, mo);
    pair<int, int> b = (m17e * me == 0) ? make_pair(0,0): make_pair(m17e, me);
    pair<int, int> c = (a.X +a.Y > b.X + b.Y) ? a : b;

    cout << c.X << " " << c.Y;
    return 0;
}
