//
// Created by zedlee on 22-5-9.
//

#include <stdio.h>
#include <memory.h>
#include <pthread.h>
#include <errno.h>
#include <unistd.h>
#include <stdlib.h>

#define NUM 5
pthread_mutex_t chopstick[NUM];
int count = 0;

void think_eat(void *arg) {
    char phi = *(char *) arg;
    int left, right;
    left = count;
    count = (count + 1) % NUM;
    right = count;
    while (1) {
        printf("Philosopher %c is thinking\n", phi);
        sleep(rand() % 5 + 1);
        pthread_mutex_lock(&chopstick[left]);
        printf("Philosopher %c fetches chopstick %d\n", phi, left);

        if (pthread_mutex_trylock(&chopstick[right]) == EBUSY) {
            pthread_mutex_unlock(&chopstick[left]);
            printf("Philosopher %c release chopstick %d\n", phi, left);
            continue;
        }

        printf("Philosopher %c fetches chopstick %d\n", phi, right);
        printf("Philosopher %c is eating.\n", phi);
        sleep(rand() % 5 + 1);
        pthread_mutex_unlock(&chopstick[left]);
        printf("Philosopher %c release chopstick %d\n", phi, left);
        pthread_mutex_unlock(&chopstick[right]);
        printf("Philosopher %c release chopstick %d\n", phi, right);
        printf("Philosopher %c finish eating\n", phi);
        break;
    }
}

int main() {
    pthread_t A, B, C, D, E;
    for (int i = 0; i < 5; i++) {
        pthread_mutex_init(&chopstick[i], NULL);
    }
    pthread_create(&A, NULL, think_eat, "A");
    pthread_create(&B, NULL, think_eat, "B");
    pthread_create(&C, NULL, think_eat, "C");
    pthread_create(&D, NULL, think_eat, "D");
    pthread_create(&E, NULL, think_eat, "E");


    pthread_join(A, NULL);
    pthread_join(B, NULL);
    pthread_join(C, NULL);
    pthread_join(D, NULL);
    pthread_join(E, NULL);
    return 0;

}