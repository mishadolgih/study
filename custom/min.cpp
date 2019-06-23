#include <iostream>

using namespace std;

int& min(int &x, int &y){
    if (x > y){
        return y;
    } else {
        return x;
    }

}
int main()
{
    int x = 5, y = 6;
    min(x, y) = 3;
    cout << x << " " << y;
    return 0;
}
