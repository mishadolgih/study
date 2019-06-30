#include <iostream>

using namespace std;
int n;

int F(int n){
    if (n > 1)
        F(n - 1);
        cout << n << " ";
    return 0;
}

int main()
{
    cin >> n;
    F(n);
    return 0;
}
