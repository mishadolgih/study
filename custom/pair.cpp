#include <iostream>
#define X first
#define Y second

using namespace std;

int main () {
  pair <int, int> a;
  pair <int, int> b (13, 43);
  pair <int, int> c (b);

  a = make_pair(32, 88);

  b.X = 33;
  b.Y = 39;

  cout << a.X << " " << a.Y << endl;
  cout << b.X << " " << b.Y << endl;
  cout << c.X << " " << c.Y << endl;
  return 0;
}
