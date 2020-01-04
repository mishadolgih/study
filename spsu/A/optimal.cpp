#include <iostream>

using namespace std;
int len;
char c;

int main()
{
//    freopen("tests/02", "r", stdin);
    int q = 0;
    bool b = true;
    cin >> len;
    while ((len--) > 0) {
        cin >> c;
        if (((c == 'm') ^ b)) {
            b = !b;
            ++q;
        }
    }
    cout << q / 2;
    return 0;
}

