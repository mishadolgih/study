#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> v = {5, 3};
    for (int i = 0; i < 5; i++)
        v.push_back(i);
    for ( int n : v )
        cout << n << "\n";
    return 0;
}
