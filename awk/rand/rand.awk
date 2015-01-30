BEGIN {
do {
    if (ARGC < 3) {
        print "usage: awk -f ./rand m n (gen m number in [1, n]";
        break;
    }
    m = ARGV[1]; n = ARGV[2];
    if (m >= n || m <= 0 || n <= 0) { print "error input; "; break; }
    srand();
    for (j = n - m + 1; j <=n; ++j) {
        t = 1 + int (j * rand());
        if (t in s) s[j] = t;
        else s[t] = 1;
    }
    for (i in s) print i;
} while (0);
}
