#include "foo.h"
#include <cstdio>
#include <cstring>

int main(int argc, char ** args) {
    FILE * fp = NULL;
    FILE * fpo = NULL;
    char buff[1024];
    int i, x;
    int len;

    if (argc < 3) {
        return -1;
    }

    fp = fopen(args[1], "r");
    if (NULL == fp) {
        return -1;
    }

    fpo = fopen(args[2], "w");
    if (NULL == fpo) {
        return -1;
    }

    Foo foo;

    while (fgets(buff, 1024, fp)) {
        len = strlen(buff);

        while (buff[len-1] == '\n' || buff[len-1] == '\r' || buff[len-1] == ' ') {
            buff[len-1] = 0; -- len;
        }

        x = 0;
        for (i = 0; i < len; ++ i) {
            x *= 10; x += (buff[i] - '0');
        }

        fprintf(fpo, "%d\n", (foo.bar(x) ? 1 : 0));
    }

    return 0;
}
