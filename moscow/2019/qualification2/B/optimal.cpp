#include <iostream>

using namespace std;

string minfl(string l, string r)
{
    int i = 0, j = 0;
    while (l[i] != '.')
        i++;
    while (r[j] != '.')
        j++;
    if ((l[0] != '-') & (r[0] != '-'))
        return i < j ? l : (j < i ? r : min(l, r));
    if ((l[0] == '-') & (r[0] == '-'))
        return i > j ? l : (j > i ? r : max(l, r));
    if ((l[0] == '-') & (r[0] != '-'))
        return l; else
        return r;


}

string minint(string l, string r)
{
    long long a = stoll(l);
    long long b = stoll(r);
    return a > b ? r : l;
}

string minstr(string l, string r)
{
    return min (r, l);
}

int main()
{
    string a, b, c;
    while (cin >> a >> b >> c) {
    string s = a + b + c;
    bool dotfound = (s.find('.') != string::npos);
        bool letterfound = false;
    for (unsigned int i = 0; i< s.length(); i++)
        if (isalpha(s[i]))
            letterfound = true;

    if (dotfound)
        cout << minfl(minfl(a, b), c) << "\n";
    else if (letterfound)
        cout << minstr(minstr(a, b), c) << "\n";
    else
        cout << minint(minint(a, b), c) << "\n";
   }

    return 0;
}
