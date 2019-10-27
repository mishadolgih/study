#include <iostream>
#include <cmath>
#include <algorithm>


using namespace std;
int w, n, m;
int nmax, mmax;
int *a = new int[n];
int *b = new int[m];

int Fnmax(int *a, int n)
{
    int max = a[0];
    for (int i = 0 ; i < n ; i++)
     if (a[i]>max) max = a[i];
    return max;
}

int Fmmax(int *b, int n)
{
    int max = b[0];
    for (int i = 0 ; i < m ; i++)
     if (b[i]>max) max = b[i];
    return max;
}

int log(int a, int b){
    return log(b) / log(a);
}

int F (int x){
    int l = 1;
    int i = 1;
    int wf = a[0];
    if (x < nmax)
        return 100001;
    while (i < n)
        if (wf + a[i] + 1 <= x) {
            wf = wf + a[i] + 1;
            i += 1;
        } else {
            wf =a[i];
            i += 1;
            l += 1;
        };
    return l;
}

int F1 (int x){
    int l = 1;
    int i = 1;
    int wf = b[0];
    if (x < mmax)
        return 100001;
    while (i < m)
        if (wf + b[i] + 1 <= x) {
            wf = wf + b[i] + 1;
            i += 1;
        } else {
            wf =b[i];
            i += 1;
            l += 1;
        };
    return l;
}

int main()
{
    cin >> w >> n >> m;
    for (int i = 0; i < n; i++)
        cin >> a[i];
    for (int j = 0; j < m; j++)
        cin >> b[j];
    int w0 = 1;
    int w1 = w;

    nmax = Fnmax(a, n);
    mmax = Fmmax(b, m);
    int p;
    while (w1 - w0 > 1) {
        p = (w0 + w1) / 2;
        if (F(p) < F1(w - p))
            w1 = p;
        else
            w0 = p;
    }
    cout <<  min(max(F(w0), F1(w - w0)), max(F(w1), F1(w - w1))) << endl;
    return 0;
}
