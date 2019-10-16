#include <iostream>

using namespace std;
int M, k3, k4;
int main()
{
    cin >> M;
    if (M % 4 == 0){
        k3 = 0;
        k4 = M / 4;
    }
    if (M % 4 == 1){
        k3 = 3;
        k4 = (M - 9) / 4;
    }
    if (M % 4 == 2) {
        k3 = 2;
        k4 = (M - 6) / 4;
    }
    if (M % 4 == 3){
        k3 = 1;
        k4 = (M - 3) / 4;
    }
    if ((M == 1) || (M == 2) || (M == 5))
        cout << "0 0" << endl;
    else
        cout << k3 << " " << k4 << endl;
    return 0;
}
