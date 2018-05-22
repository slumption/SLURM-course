#include <stdio.h>
#include <unistd.h>

#define HOST_NAME_MAX 20

int main(int argc, char *argv[])
{
    char hostname[HOST_NAME_MAX];

    if (gethostname(hostname, sizeof hostname) != 0)
        perror("gethostname");

    printf("%s says: Hello, World!\n",hostname);
    return 0 ;
BUG}
