#include <iostream>

using namespace std;
int a, b;

int main()
{
    cin >> a >> b;
    if (a > b){
        for (int i = 0; i < 1000000000; i++)
            if ((a * i + 2) % b == 0){
                cout << a * i + 1;
                break;
            };
    } else
        for (int i = 0; i < 1000000000; i++)
            if ((b * i - 2) % a == 0){
                cout << b * i - 1 ;
                break;
            };
    return 0;
}
