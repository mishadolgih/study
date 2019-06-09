#include <iostream>
#include <algorithm>
#include <cstring>
using namespace std;

int Search_Binary (int arr[], int left, int right, int key)
{
    int midd = 0;
    while (1) {
        midd = (left + right) / 2;
        if (key < arr[midd])
            right = midd - 1;
        else if (key > arr[midd])
            left = midd + 1;
        else
            return midd;
        if (left > right)
        return -1;
    }
}

int N, K;

int main()
{
//   freopen("tests/00", "r", stdin);
    cin >> N >> K;
    int *a = new int[N];
    int *b = new int[K];
    for (int i = 0; i < N; i++)
        cin >> a[i];

    int m = (K - 1) / 2;
    memcpy(b, a, 4 * K);
    sort(b, b + K);
    cout << b[m] << " ";

    for (int i = 1; i < (N - K + 1); i++){
        int j = Search_Binary (b, 0, K, a[i - 1]);
        for (int i = j; i < (K - 1); ++i)
            b[i] = b[i + 1];

        int k = 0;
        while ((b[k]<a[i + K - 1]) && (k < (K - 1)))
            k++;
        for (int j = K; j > k; j--)
            b[j]=b[j-1];
        b[k]= a[i + K - 1];
        cout << b[m] << " " ;
    }
    return 0;
}
