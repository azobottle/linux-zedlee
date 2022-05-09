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
    //printf("please input a string:");
    //scanf("%s", buff);
    pipe(d1);
    pipe(d2);
    if (fork() == 0) {
        close(d1[1]);
        close(d2[0]);
        close(d2[1]);
        while (read(d1[0], buff, sizeof(buff)) == 0);
        printf("P2 received %s form P1\n", buff);
        close(d1[0]);
    } else {
        if (fork() == 0) {
            close(d1[0]);
            close(d1[1]);
            close(d2[1]);
            while (read(d2[0], buff, sizeof(buff)) == 0);
            printf("P3 received %s form P1\n", buff);
            close(d2[0]);
        } else {
            close(d1[0]);
            close(d2[0]);
            scanf("%s", buff);
            if (strlen(buff) % 2 == 0) {
                //printf("%s\n%d\n", buff, (int) strlen(buff));
                write(d1[1], buff, strlen(buff));
            } else {
                //printf("%s\n%d\n", buff, (int) strlen(buff));
                write(d2[1], buff, strlen(buff));
            }
        }
    }
}