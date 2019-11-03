#include <iostream>
#include <string>


using namespace std;

string str1, str2, str3;

int main()
{
    cin >> str1 >> str2 >> str3;
    int qmax = 0;
    string smax;
    string s;
    for (unsigned int i = 0; i < str1.length(); i++)
        for (unsigned int j = 0; j < str2.length(); j++)
            for (unsigned int k = 0; k < str3.length(); k++)
                if ((str1[i] == str2[j]) && (str1[i] == str3[k])) {
                    s = str1[i];
                    int q = 1;
                    while ((i + q <= str1.length()) || (j + q <= str2.length()) || (k + q <= str3.length()))
                        if ((str1[i + q] == str2[j + q] ) && (str1[i + q] == str3[k + q])){
                            s = s + str1[i + q];
                            q = q + 1;
                        } else break;
                    if (q >= qmax){
                        smax = s;
                        qmax = q;
                    }
                }


    cout << smax << endl;
    return 0;
}
