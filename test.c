//
// Created by zedlee on 22-5-13.
//
#include<stdio.h>
#include<unistd.h>
#include <fcntl.h>
#include <stdlib.h>

char buf1[] = "the is test text";

char buf2[] = "12345";

main() {

    int fid;

    if ((fid = creat("Test", 0644)) < 0)     /*创建一个文件*/

    {

        printf("creat file error\n");

        exit(1);

    } else {

        if (write(fid, buf1, 16) == -1) { /*向创建的文件中写信息，写入的信息是
                                 buf1中的随机值*/
            printf("buf1 write error\n");
            exit(1);
        }

        int post = ftell(fid);                  /*查询写操作后文件的指针位置*/

        printf("file postis_1:%d", post);

        /*offset now=16*/

        if (lseek(fid, 30, 0) == -1)          /*强行改变指针位置*/

        {

            printf("lseek error\n");

            exit(2);

        }

        if (write(fid, buf2, 5) != 5)         /*再键入5个字节*/

        {

            printf("buf2 write error\n");

            exit(3);

        }

        post = ftell(fid);                  /*报告当前的文件指针位置*/

        printf("file postis_2:%d", post);

        close(fid);

    }


}