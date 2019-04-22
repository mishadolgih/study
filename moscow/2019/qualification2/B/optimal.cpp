#include <iostream>
#include <cstring>

using namespace std;

string minfl(string l, string r)
{
    for (int i = 0; i< s.length(); i++){

}


int main()
{
    string a, b, c;
    while (cin >> a >> b >> c) {
    string s = a + b + c;
    bool dotfound = (s.find('.') != string::npos);
        letterfound = false;
    for (int i = 0; i< s.length(); i++)
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
