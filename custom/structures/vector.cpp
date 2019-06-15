#include <iostream>
#include <cstring>

using namespace std;

int main()
{
    struct Vector
{
    int *p;
    size_t size;
    size_t capacity;
    push_back(int val)
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

}
