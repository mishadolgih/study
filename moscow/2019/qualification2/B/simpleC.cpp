#include <iostream>
#include <fstream>

using namespace std;

bool letterfound;

string minstr(string l, string r)
{
    return min(l, r);
}

string minint(string l, string r)
{
    long long x = stoll(l);
    long long y = stoll(r);
    return x < y ? l : r;
}


string minld(string l, string r)
{
    long double x = stold(l);
    long double y = stold(r);
    return x < y ? l : r;
}

int main() {
 //   freopen("tests/02", "r", stdin);
    string a, b, c;
    while (cin >> a >> b >> c) {
        string s = a + b + c;
        bool dotfound = (s.find('.') != string::npos);
        letterfound = false;
        for (int i = 0; i< s.length(); i++)
            if (isalpha(s[i]))
                letterfound = true;

        if (dotfound)
            cout << minld(minld(a, b), c) << "\n";
        else if (letterfound)
            cout << minstr(minstr(a, b), c) << "\n";
        else
            cout << minint(minint(a, b), c) << "\n";

    }
    return 0;
}
