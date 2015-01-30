BEGIN {
    total = 0;
    }

/\/\*[^*]/{
    #print "start 1"
    i = 1
    while (getline) {
        #print
        if (/ *\*\/$/) { i = i + 1; total += i; break; }
        else { i = i + 1; }
    }
}
#/\/\*\*/{
#    print "start 2"
#    i = 1
#    while (getline) {
#        if (/ *\*\/$/) { print i; total += i; break; }
#        else if (/ *\*/ ) { i = i + 1}
#        else {break;}
#        }
#    }

END {print total}
