#include <iostream>
#include <string>
#include <stdlib.h>
#include <conio.h>

using namespace std;
int n;
string *arr_strings;

int F(int x){
    int a[27];
    for (int j = 0; j < 27; j++)    // не оптимизированно
        a[j] = 0;
    for (int i = 0; i < n; i++){
        char c = arr_strings[i][x]; // номер символа в таблице ASCII
        int b = (int) c;
        if (b == 0)
            a[26] += 1; // если строка закончена
        else
            a[b - 97] += 1;
    }
    int m = 0;  // максимальное кол-во повтор€ющихс€ символов
    for (int j = 1; j < 26; j++)
        if (a[j] > a[m])
            m = j;
    int d = n - a[m] - a[26];   // кол-во замен в x символе по счету
    return (d);
}

int maxlength(int n){
    int l = arr_strings[0].length();
    for (int i = 1; i < n; i++)
        if (arr_strings[i - 1].length() > arr_strings[i].length())
            l = l;
        else
            l = arr_strings[i].length();
    return l;
}

int main()
{
    freopen("tests/00", "r", stdin);
    cin >> n;

    arr_strings = new string [n];
    for (int i = 0; i < n; i++)
        cin >> arr_strings[i];  // читаем строки
    int k = 0;  // кол-во замен
    int l = maxlength(n);   // кол-во символов в саммом длинном слове
    for (int i = 0; i < l; i++)
        k = k + F(i);
    cout << k;
    return 0;
}
