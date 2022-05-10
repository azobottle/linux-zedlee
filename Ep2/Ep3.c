//
// Created by zedlee on 22-5-8.
//
#include<stdio.h>
#include<signal.h>
#include<unistd.h>
#include <sys/wait.h>
#include <stdlib.h>

void loop2wait(), stoploop();

int wait_mark;

int main() {
    int p1, p2;
    if (fork() == 0) {/*创建子进程p1*/
        wait_mark = 1;
        signal(SIGINT, stoploop);
        loop2wait();
        printf("child process 1 is killed by parent\n");
        exit(0);
    } else {
        if (fork() == 0) {/*创建子进程p2*/
            wait_mark = 1;
            signal(SIGINT, stoploop);
            loop2wait();
            printf("child process 2 is killed by parent\n");
            exit(0);
        } else {
            wait_mark = 1;
            signal(SIGINT, stoploop);/*接收到^c信号，转stop*/
            loop2wait();
            kill(p1, 17);
            kill(p2, 17);
            waitpid(p1, NULL, 0);/*同步*/
            waitpid(p2, NULL, 0);
            printf("parent process exit\n");
            exit(0);
        }

    }
}

void loop2wait() {
    while (wait_mark != 0);
}

void stoploop() {
    wait_mark = 0;
}