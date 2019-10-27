#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#define

using namespace std;
int N;
pair<int, int> point;

int F(int x, int y){

    return ((a[x][x] - a[x][1]) * (a[y][1] - a[x][1]));
}
int main()
{
//    freopen("00", "r", stdin);
    cin >> N;
    for (int i = 0; i < N; i++)
        for (int j = 0; j < 2; j++)
            cin >> a[i][j];
    int m = 0;
    for (int i = 0; i < N - 2; i++)
        for (int j = i + 1; j < N - 1; j++)
            for (int k =j + 1; k < N; k++)
                if (F(i, j) + F(i, k) + F(j, k) = 1)
                    m = m + 1;
    cout << m << endl;
    return 0;
}
