#include <iostream>
#include <string>
using namespace std;
#define npos string::npos
string a, b, c;
int n, m, k;

int main()
{
//    freopen("tests/00", "r", stdin);
    cin >> a >> b >> c;
    n = a.length();
    m = b.length();
    k = c.length();

    string v = "";
    for (int i = 0; i < n; i++)
        for (int j = i; j < n; j++) {
            int l = j - i + 1;
            string d = a.substr(i, l);
            if ((b.find(d) != npos) && (c.find(d) != npos)) {
                if (l >= (int)v.length())
                    v = d;
            } else
                break;
        }
    cout << v;
    return 0;
}
