#include <iostream>

using namespace std;

int n;
int s = 0;

int F(int n){
    if ( n > 0) {
        s += (n % 10);
        F(n / 10);
    }
    return s;
}

int main()
{
    cin >>n;
    F(n);
    cout << s;
    return 0;
}
