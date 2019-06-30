#include <iostream>

using namespace std;

int a;

void S(int a){
    if (a == 1)
        cout << "YES";
    else if (a % 2 == 1)
        cout << "NO";
    else
        S(a / 2);

}
int main()
{
    cin >> a;
    S(a);
    return 0;
}
