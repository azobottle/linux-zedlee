//
// Created by zedlee on 22-5-7.
//
#include <unistd.h>

#include <signal.h>

#include <sys/types.h>

#include<sys/wait.h>
#include <stdio.h>


void main()

{pid_t pid;

    int status;

    if(!(pid=fork()))

    {printf("Hi I am child process!\n");

        sleep(100);

        return;

    }

    else

    {printf("send signal to child process (%d)\n",pid);

        sleep(1);

        kill(pid ,SIGKILL);

        wait(&status);

        if(WIFSIGNALED(status))

            printf("chile process receive signal %d",WTERMSIG(status));

    }

}