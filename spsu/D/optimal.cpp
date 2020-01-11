#include <iostream>
#include <set>

using namespace std;
int n;
set<int> len;

int main()
{
//    freopen("tests/00", "r", stdin);
    cin >> n;
//    if (n == 1){
//        cout << "NO";
//        return 0;
//    }
    int a;
    for(int i = 0; i < n; i++){
        cin >> a;
        len.insert(a);
    }
    int s = *(len.begin());
    int d = 1;
//       if (len.size() == 1){
//        cout << "YES";
//        cout << s << " " << 0;
//        return 0;
//    }

    cout << "YES" << endl;
    cout << s << " " << d;
    return 0;
}
