#include <iostream>

using namespace std;

int n;

void F(int n){
    if (n > 0){
        cout << (n % 10) << " ";
        F(n / 10);
    }
}

int main()
{
    cin >> n;
    F(n);
    return 0;
}
