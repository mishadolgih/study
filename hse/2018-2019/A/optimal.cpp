#include <iostream>
#include <stdlib.h>

using namespace std;

int N, P, Q;

int main()
{
    cin >> N >> P >> Q;
    int x = max(P, Q);
    int y = min(P, Q);

    int a = y-(N-x) >= 1 ? y- N + x : 1;
    int b = x + y -1 >= N ? N : x + y -1;
    cout << a << " " << b;
    return 0;
}
