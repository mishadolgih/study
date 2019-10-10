#include <iostream>
#include <cmath>
#include <algorithm>


using namespace std;
int w, n, m;
int w0, w1, nmax, mmax;
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

//int G(int p, int nextp){
//    if (F(nextp) == F1(w - nextp))
//        return F(nextp);
//    if (F(nextp) < F1(w - nextp)){
//        if (max(F((w0 + p) / 2), F1(w - (w0 + p) / 2)) <= max(F(p), F1(w - p)))
//            p = nextp;
//        nextp = (w0 + p) / 2;
//    } else {
//        if (max(F((p + w1) / 2), F1(w - (p + w1) / 2)) <= max(F(p), F1(w - p)))
//            p = nextp;
//        nextp = (p + w1) / 2;
//    };
//    if (abs(p - nextp) == 1)
//        return min(max(F(nextp), F1(w - nextp)), max(F(p), F1(w - p)));
//    G(p, nextp);
//}
int main()
{
    cin >> w >> n >> m;
    for (int i = 0; i < n; i++)
        cin >> a[i];
    for (int j = 0; j < m; j++)
        cin >> b[j];
    w0 = 1;
    w1 = w;

    nmax = Fnmax(a, n);
    mmax = Fmmax(b, m);
    int N = ceil(log(2, w));
    int p = w / 2;
    int nextp = w / 2;
    for (int i = 0; i < N; i++){
        if (F(nextp) < F1(w - nextp)){
            if (max(F(nextp), F1(w - nextp)) <= max(F(p), F1(w - p)))
                p = nextp;
        w1 = nextp;
        nextp = (w0 + p) / 2;
        } else {
            if (max(F(nextp), F1(w - nextp)) <= max(F(p), F1(w - p)))
                p = nextp;
            w0 = nextp;
            nextp = (p + w1) / 2;
        };
    }
    cout <<  min(max(F(nextp), F1(w - nextp)), max(F(p), F1(w - p))) << endl;
    return 0;
}
