//
// Created by zedlee on 22-5-9.
//

#include <stdio.h>
#include <memory.h>
#include <pthread.h>
#include <errno.h>
#include <unistd.h>

//筷子作为mutex
#define NUM 5
pthread_mutex_t chopstick[NUM];
int count = 0;

void eat_think(void *arg) {
    char phi = *(char *) arg;
    int left, right; //左右筷子的编号
    left = count;
    count = (count + 1) % NUM;
    right = count;
    while (1) {
        sleep(1); //思考
        pthread_mutex_lock(&chopstick[left]); //拿起左手的筷子
        printf("Philosopher %c fetches chopstick %d\n", phi, left);

        if (pthread_mutex_trylock(&chopstick[right]) == EBUSY) {  //拿起右手的筷子
            pthread_mutex_unlock(&chopstick[left]); //如果右边筷子被拿走放下左手的筷子
            printf("Philosopher %c release chopstick %d\n", phi, left);
            continue;
        }

        //   pthread_mutex_lock(&chopstick[right]); //拿起右手的筷子，如果想观察死锁，/把上一句if的所有语句注释掉，再把这一句加上
        printf("Philosopher %c fetches chopstick %d\n", phi, right);
        printf("Philosopher %c is eating.\n", phi);
        sleep(1); //吃饭
        pthread_mutex_unlock(&chopstick[left]); //放下左手的筷子
        printf("Philosopher %c release chopstick %d\n", phi, left);
        pthread_mutex_unlock(&chopstick[right]); //放下右手的筷子
        printf("Philosopher %c release chopstick %d\n", phi, right);
        printf("Philosopher %c finish eating\n", phi);
        break;
    }
}

int main() {
    pthread_t A, B, C, D, E; //5个哲学家

    int i;
    for (i = 0; i < 5; i++) {
        pthread_mutex_init(&chopstick[i], NULL);
    }
    pthread_create(&A, NULL, eat_think, "A");
    pthread_create(&B, NULL, eat_think, "B");
    pthread_create(&C, NULL, eat_think, "C");
    pthread_create(&D, NULL, eat_think, "D");
    pthread_create(&E, NULL, eat_think, "E");

    pthread_join(A, NULL);
    pthread_join(B, NULL);
    pthread_join(C, NULL);
    pthread_join(D, NULL);
    pthread_join(E, NULL);
    return 0;

}