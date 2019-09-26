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
        size = 0;
        capacity = 2;
        p = new int[capacity];
    }
    vector(int size)
    {
        this->size = 0;
        capacity = size;
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
    int &operator[](int i){
        return p[i];
    }
};

int main()
{
    vector v;
    v.push_back(1);
    v.push_back(3);
    v.push_back(2);
    v.push_back(2);
    v[1] = 5;
 // вывод всех элементов структуры
    for (int i = 0; i < v.size; i++)
        cout << v[i] << " ";
    return 0;
}
