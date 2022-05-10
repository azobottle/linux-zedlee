//
// Created by zedlee on 22-5-9.
//
#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
void fuc1() {
    int i=1;
    while (i<=1000){
        printf("%d ",i);
        sleep((unsigned int) 0.5);
        i++;
    }
}

void fuc2() {
    int i=1000;
    while (i>=1){
        printf("%d ",i);
        sleep((unsigned int) 0.5);
        i--;
    }
}

int main() {
    pthread_t p1, p2;
    pthread_create(&p1,NULL,fuc1,NULL);
    pthread_create(&p2,NULL,fuc2,NULL);
    pthread_join(p1,NULL);
    pthread_join(p2,NULL);
}

