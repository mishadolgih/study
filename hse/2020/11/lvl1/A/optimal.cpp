#include <iostream>
#include <conio.h>

using namespace std;
int n;
struct train
{
    char name[20];
    train *next;
};

int main()
{
    string s, s1;
    int a;
    cin >> s >> a >> s1;
    cout << s1 << endl;
    return 0;
}
