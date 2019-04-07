#include <iostream>
#include <fstream>

using namespace std;

bool letterfound;

string minstr(string l, string r)
{
    if (l<r) {
       return l;
    } else {
    return r;
    }
}

string minint(string l, string r)
{
    int64_t x = stoll(l);
   int64_t y = stoll(r);
    if (x<y) {
        return l;
    } else {
   return r;
    }
}


string minfloat(string l, string r)
{
    float x = stof(l);
    float y = stof(r);
    if (x<y) {
       return l;
    } else {
    return r;
  }
}

int main() {
    freopen("tests/02", "r", stdin);
    string a, b, c;
    while (cin >> a >> b >> c) {
 //       cout << a << " " << b << " " << c << "\n";
        string s = a + b + c;
        bool dotfound = (s.find('.') != string::npos);
//        cout << dotfound << "\n";
        letterfound = false;
        for (int i = 0; i< s.length(); i++) {
            if (s[i] >= 'A' && s[i] <= 'Z' || s[i] >= 'a' && s[i] <= 'z')
                letterfound = true;
        }
//        cout << letterfound << "\n";

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

