//
// Created by zedlee on 22-5-8.
//
#include<unistd.h>
#include<stdio.h>
#include <string.h>

int main() {
    int d1[2];
    int d2[2];
    char buff[200];
    pipe(d1);
    pipe(d2);
    if (fork() == 0) {
        close(d1[1]);
        close(d2[0]);
        close(d2[1]);
        while (read(d1[0], buff, sizeof(buff)) == 0);
        printf("P2 received %s form P1(even)\n", buff);
        close(d1[0]);
    } else {
        if (fork() == 0) {
            close(d1[0]);
            close(d1[1]);
            close(d2[1]);
            while (read(d2[0], buff, sizeof(buff)) == 0);
            printf("P3 received %s form P1(odd)\n", buff);
            close(d2[0]);
        } else {
            close(d1[0]);
            close(d2[0]);
            scanf("%s", buff);
            if (strlen(buff) % 2 == 0) {
                write(d1[1], buff, sizeof(buff));
            } else {
                write(d2[1], buff, sizeof(buff));
            }
        }
    }
}