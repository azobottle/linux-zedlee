//
// Created by zedlee on 22-5-8.
//
#include<unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int main() {
    int d1[2];
    int d2[2];
    int d3[2];
    int r, j, k;
    char buff[200];
    printf("please input a string:");
    scanf("%s", buff);
    r = pipe(d1);
    if (r == -1) {
        printf("chuangjianguandaoshibai 1\n");
        exit(1);
    }
    r = pipe(d2);
    if (r == -1) {
        printf("chuangjianguandaoshibai 2\n");
        exit(1);
    }
    r = pipe(d3);
    if (r == -1) {
        printf("chuangjianguandaoshibai 3\n");
        exit(1);
    }
    r = fork();
    if (r) {
        close(d1[1]);
        read(d1[0], buff, sizeof(buff));
        if (strlen(buff) % 2 == 1) {
            j = fork();
            if (j) {
                close(d2[1]);
                read(d2[0], buff, sizeof(buff));
                printf("p3 pipe2 odd length string: %s\n", buff);
                close(d2[0]);
                exit(0);
            } else {
                close(d2[0]);
                write(d2[1], buff, strlen(buff));
                printf("P2 finishes writing to pipe2.\n");
                close(d2[1]);
                exit(0);
            }
        } else {
            k = fork();
            if (k) {
                close(d3[1]);
                read(d3[0], buff, sizeof(buff));
                printf("P4 pipe3 even length string:%s\n", buff);
                close(d3[0]);
                exit(0);
            } else {
                close(d3[0]);
                write(d3[1], buff, strlen(buff));
                printf("P2 finishes writing to pipe3.\n");
                close(d3[1]);
                exit(0);
            }
        }
    } else {
        close(d1[0]);
        write(d1[1], buff, strlen(buff));
        close(d1[1]);
        exit(0);
    }
}