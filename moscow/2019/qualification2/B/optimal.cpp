#include <iostream>
#include <fstream>

using namespace std;

bool letterfound;

string minstr(string l, string r)
{
    if (l<r) {
        exit(l);
    } else {
    exit(r);
    }
}

string minint(string l, string r)
{
    int64_t x = stoll(l);
    int64_t y = stoll(r);
    if (x<y) {
        exit(l);
    } else {
    exit(r);
    }
}


string minfloat(string l, string r)
{
    float x = stof(l);
    float y = stof(r);
    if (x<y) {
        exit(l);
    } else {
    exit(r);
    }
}

int main() {
    freopen("tests/00", "r", stdin);
    string a, b, c;
    while (cin >> a >> b >> c) {
        cout << a << " " << b << " " << c << "\n";
        string s = a + b + c;
        bool dotfound = (s.find('.') != string::npos);
        cout << dotfound << "\n";
        int ctr =0;
        bool letterfound = (s.find(isalpha(s[ctr])) != string::npos);
        cout << letterfound << "\n";

        if (dotfound) {
            cout << minfloat(minfloat(a, b), c) << "\n";
        } else if (letterfound){
            cout << minstr(minstr(a, b), c) << "\n";
        } else {
            cout << minint(minint(a, b), c) << "\n";
            }
    }
    return 0;
    }

