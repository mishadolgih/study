#include <iostream>
#include <stdlib.h>
#include <cmath>

using namespace std;

double M, X, Y, W, H;

int optimal(){
    if (X >= M) {
       X = X - (floor(X / M) * M);
    }

    if (Y >= M) {
        Y = Y - (floor(Y / M) * M);
    }

    double l = ceil((X + W) / M);
    double k = ceil((Y + H) / M);
    return l*k;
}

int main()
{
   freopen("tests/00", "r", stdin);
   cin >> M >> X >> Y >> W >> H;
   cout << optimal();
    return 0;
}
