#include <iostream>

using namespace std;

int N, P, Q, L, R, *a;
int lp, rp;


int main()
{
//    freopen("tests/01", "r", stdin);
    cin >> N >> P >> Q;
//    cout << N << P << Q << endl;
    a = new int[N];
    for (int i = 1; i <= N; i++)
        cin >> a[i];
//    for (int i = 1; i <= N; i++)
//        cout << a[i] << endl;

    int y = 0, x = 0, R = 0;
    L = 1;
    while ((P > x) || (Q > y)){
        R += 1;
        if (a[R] == 1)
            x += 1;
        else
            y += 1;
    }
    rp = R;
    for (int i = 2; i <= (N - P - Q + 1); i++){
        if (a[i - 1] == 1)
            x -= 1;
        else
            y -= 1;
        lp = i;
        while ((x < P) || (y < Q)){
            if (rp + 1 <= N)
                rp += 1;
            else{
                rp = -1;
                break;
            }
            if (a[rp] == 1)
                x += 1;
            else
                y += 1;
        }
        if (rp == -1)
            break;
        else
            if (rp -lp +1 < R - L + 1){
                R = rp;
                L = lp;
        }
    }
    cout << L << " " << R;
    return 0;
}
