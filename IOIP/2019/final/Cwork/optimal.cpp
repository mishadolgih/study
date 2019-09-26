#include <iostream>
#include <string.h>
using namespace std;

int s, t;
int d[11];

int main()
{
    cin >> s;
    t = 0;
    for (int i = 0; i < 11; i++)
        d[i] = 0;
    int b[11];
    memcpy(b, d, sizeof(d));
    while (s > 0) {
        int k = s % 1000;
        s = s / 1000;
        int p = 0;
        if ((k < 100) || (k > 122)){
            if ((((k % 100 >= 65) && (k % 100 <= 90)) || ((k % 100 >= 97) && (k % 100 <= 99))) && (d[k / 100] >= 0)){
                d[k / 100] += 1;
                p = 1;
            }
            if ((((k / 10 % 10 >= 65) && (k / 10 % 10 <= 90)) || ((k / 10 % 10 >= 97) && (k / 10 % 10 <= 99))) and (d[k / 10 % 10] >= 0) ){
                d[k / 10 % 10] += 1;
                p = 1;
            }
            if ((((k / 10 >= 65) && (k / 10 <= 90)) || ((k / 10 >= 97) && (k / 10 <= 99))) && (d[k % 10] >= 0)){
                d[k % 10] += 1;
                p = 1;
            }
            if (p == 0){
                cout << 0;
                exit(0);
            }
        for (int i = 0; i < 9; i++)
            if (d[i] == b[i])
                d[i] = -1;
        memcpy(b, d, sizeof(d));
        }
    }
    for (int i = 0; i < 10; i++)
        if (d[i] > d[10])
            t += d[i];

    cout << t << endl;
    return 0;
}
