#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>

using namespace std;

int n, *a;

int main()
{
    cin >> n;
    a = new int(n);
    for (int i = 0; i < n; i++)
        cin >> a[i];

    sort(a, a + n);
    for (int i = 0; i < n; i++){

    }
    int  m = n / 2;
    if (n % 2 == 1){
       cout << a[m] << " ";
       for (int i = 1; i <= m; i++)
            cout << a[m - i] << " " << a[m + i] << " ";
    } else
        for (int i = 0; i <= m; i++)
            cout << a[m - i] << " " << a[m + 1 +i] << " ";
    return 0;
}
