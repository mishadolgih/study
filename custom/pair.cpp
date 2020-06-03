#include <iostream>
#define X first
#define Y second

using namespace std;

int main () {
  pair <int, int> a;
  pair <int, int> b (13, 43);
  pair <int, int> c (b);
  pair <int, int> d;


  a = {32, 88};
  d = (11 == 11) ? make_pair(13, 12): make_pair(18, 19);
  b.X = 33;
  b.Y = 39;

  cout << a.X << " " << a.Y << endl;
  cout << b.X << " " << b.Y << endl;
  cout << c.X << " " << c.Y << endl;
  cout << d.X << " " << d.Y << endl;
  return 0;
}
