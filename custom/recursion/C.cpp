#include <iostream>

using namespace std;

int m, n;

int A(int m, int n){
    if (m == 0)
        return (n + 1);
    if ((n == 0) && (m > 0))
        return (A(m - 1, 1));
    else
        return (A(m - 1, A(m, n - 1)));
}

int main()
{
    cin >> m;
    cin >> n;
    cout << A(m, n);
    return 0;
}
