#include <iostream>
#include <cstring>

using namespace std;

    struct vector
{
    int *p;
    int size;
    int capacity;
    vector()
    {
        capacity = 2;
        size = 0;
        p = new int[capacity];
    }
    void push_back(int val)
    {
        if (size == capacity)
        {
            capacity = capacity * 2;
            int *t = new int[capacity];
            memmove(t, p, sizeof(*p) * size);
            delete[] p;
            p = t;
        }
        p[size++] = val;
    }
};
int main()
{
    vector v;
    v.push_back(1);
    v.push_back(3);
    v.push_back(2);
}
