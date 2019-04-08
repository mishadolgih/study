#include <iostream>
#include <stdlib.h>

using namespace std;

int a, b;

int main()
{
    int N, P, Q;
    cin >> N >> P >> Q;
    int x = max(P, Q);
    int y = min(P, Q);

    if (y-(N-x) >= 1){
        a = y-(N-x);
    } else {
        a = 1;
        }
    if (x + y -1 >= N) {
        b = N;
    } else {
        b = x + y -1;
        }
    cout << a << " " << b;
    return 0;
}
