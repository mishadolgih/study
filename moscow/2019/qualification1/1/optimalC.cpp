#include <iostream>
#include <stdlib.h>
#include <cmath>

using namespace std;

int M, X, Y, W, H;

int optimal(){
    if (X >= M) {
       X = X - X / M * M;
    }

    if (Y >= M) {
        Y = Y - Y / M * M;
    }

    int l = ceil(float(X + W) / M);
    int k = ceil(float(Y + H) / M);
    return l*k;
}

int main()
{
 //  freopen("tests/00", "r", stdin);
   cin >> M >> X >> Y >> W >> H;
   cout << optimal();
    return 0;
}
