#include <iostream>
#include <stdlib.h>
#include <stdio.h>

using namespace std;
int N;
int a [2500][2];

int F(int x, int y){

    return ((a[x + 1][1] - a[x][1]) * (a[y][1] - a[x][1]));
}

int G(int x, int y){
    return ((a[x + 1][2] - a[x][2]) * (a[y][2] - a[x][2]));
}


int main()
{
//    freopen("00", "r", stdin);
    cin >> N;
    for (int i = 0; i < N; i++)
        for (int j = 0; j < 2; j++)
            cin >> a[i][j];
    int m = 0;
    for (int i = 0; i < N - 1; i++)
            for (int j = 0; j < N; j++)
                if ((F(i, j) == (-G(i, j))) && (i != j)){
//                    cout << i << j << endl;
                    m = m + 1;
                }

    cout << m << endl;
    return 0;
}
