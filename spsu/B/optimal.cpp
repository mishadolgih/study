#include <iostream>
#include <cstring>
#include <string>



using namespace std;

int main(){
    string str;
    cin >> str;

    if (str.length() == 1){
        cout << "-1";
        return 0;
    }
    char mass[60];
    strcpy(mass,str.c_str());
    int k = 0;
    while (mass[k] != '\0')
        k++;
    for(int i = 0; i <= k - 2; i++){
        swap(mass[i],mass[i+1]);
    }
    for (auto i = 0; i < k; i++)
        cout << mass[i];

    return 0;
}
