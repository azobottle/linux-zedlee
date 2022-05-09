//
// Created by zedlee on 22-5-8.
//
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include<stdio.h>
#include<stdlib.h>
#include <string.h>

int main() {
    int d[2];
    pipe(d);
    char buff[200];
    pid_t pc, pr;
    pc = fork();
    if (pc < 0)
        printf("Error occured on forking.\n");
    else if (pc == 0) {
        int sum = 0;
        close(d[1]);
        while (sum <= 100) {
            int i = 0;
            read(d[0], buff, sizeof(buff));
            while (buff[i] <= '9' && buff[i] >= '0')i++;
            if (i == strlen(buff)) {
                sum += atoi(buff);
            } else {
                printf("%s", buff);
            }
        }
        printf("my work done");
        close(d[0]);
        exit(0);
    } else {
        close(d[0]);
        do {
            pr = waitpid(pc, NULL, WNOHANG);
            if (pr == 0) {
                scanf("%s", buff);
                write(d[1], buff, strlen(buff));
                sleep(1);
            }
        } while (pr == 0);
        close(d[1]);
    }
    exit(0);
}