#include <iostream>

using namespace std;
string s;
int n, k, *a;

int main()
{       // первый запуск
    cin >> s;
    cin >> n >> k;
    a = new int [k]{};
    if (s == "forward"){
        for (int i = 0; i < k; i++)
            cin >> a[i];
        if (k != 1){
            cout << "first ";
            for (int i = 0; i < k - 1; i++)
                cout << a[i] << " ";
        }
        else{
            cout << "second ";
            for (int i = 0; i < k; i++)
                cout << a[i] - 1 << " ";
        }
    }
    else{       // второй запуск
        string sc;
        cin >> sc;
        if (sc == "first"){
            for (int i = 0; i < k - 1; i++)
                cin >> a[i];
            for (int i = 0; i < k - 1; i++)
                cout << a[i] << " ";
            cout << a[k - 2] + 1;
        }
        else{
            for (int i = 0; i < k; i++)
                cin >> a[i];
            for (int i = 0; i < k - 1; i++)
                cout << a[i] + 1 << " ";
            cout << a[k - 1] + 1;
        }
    }
    return 0;
}
