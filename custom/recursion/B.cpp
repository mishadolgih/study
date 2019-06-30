#include <iostream>

using namespace std;
int A, B;

void F(int A, int B){
    if (A > B){
        cout << A << " ";
        F(A - 1, B);
    } else if (A == B)
        cout << A;
     else {
        cout << A << " ";
        F(A + 1, B);
    }
}
int main()
{
    cin >> A;
    cin >> B;
    F(A, B);
    return 0;
}
