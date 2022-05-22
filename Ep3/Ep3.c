//
// Created by zedlee on 22-5-22.
//
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
FILE *f;

int myread(const char *s)    //读取文件
{
    char buf[512];
    if((f = fopen(s, "r")) == NULL)
    {
        printf("路径%s的文件打开失败。\n", s);
        return -1;
    }
    else while(1)
        {
            memset(buf, 0, sizeof(buf));
            if(fgets(buf, sizeof(buf), f) == NULL)
                break;
            printf("%s", buf);
        }
    return 0;
}


int mywrite(const char *s, int l, int r, int def)    //修改文件
{
    myread(s);
    printf("参数范围（%d--%d），不在范围内的值将默认为%d\n", l, r, def);
    printf("请输入修改参数的值:");
    int t;
    scanf("%d", &t);
    if(t >= l && t <= r){
        char ops[512] = "";
        sprintf(ops, "sudo sh -c \"echo %d > %s\"", t, s);
        system(ops);
        printf("修改成功\n");
    }
    else
    {
        printf("输入参数范围错误。\n");
        printf("设为默认值？（Y/y确认，N/n取消）");
        char buf[256];
        memset(buf, 0, sizeof(buf));
        scanf("%s", buf);
        if(strcmp(buf, "Y") == 0 || strcmp(buf, "y") == 0) {
            t = def;
            char ops[512] = "";
            sprintf(ops, "sudo sh -c \"echo %d > %s\"", t, s);
            system(ops);
            printf("修改成功\n");
        } else{
            printf("已放弃修改\n");
        }

    }
    return 0;

}

void clear()    //清屏
{
    sleep(1);
    system("clear");
}

void finish()    //结束操作
{
    char buf[256];
    while(1)
    {
        printf("结束操作？（Y/y结束）：");
        memset(buf, 0, sizeof(buf));
        scanf("%s", buf);
        if(strcmp(buf, "Y") == 0 || strcmp(buf, "y") == 0)break;

    }
    printf("操作结束\n");
}

int main()
{
    int op = 0;
    int x = 0;
    while(1)
    {
        clear();
        printf("用户您好，您能执行下列3种操作之一：\n");
        printf("1.直接查看预设好的相关系统参数\n");
        printf("2.修改相应的系统参数\n");
        printf("0.退出程序\n");
        printf("请输入数字以选择您的操作：");
        scanf("%d", &op);
        switch(op)
        {
            case 1:
                clear();
                printf("用户您好，您可以通过数字直接查看下列参数：\n");
                printf("1.CPU的信息\n");
                printf("2.物理内存、交换空间等的信息\n");
                printf("3.已加载的文件系统的列表\n");
                printf("4.可用设备的列表\n");
                printf("5.被支持的文件系统\n");
                printf("6.已加载的模块\n");
                printf("7.内核版本\n");
                printf("8.系统启动时输入的内核命令行参数\n");
                printf("9.系统上次启动以来的运行时间\n");
                printf("10.最大的TCP数据接收缓冲（操作2可修改）\n");
                printf("11.最大的TCP数据发送缓冲（操作2可修改）\n");
                printf("12.一个消息队列的最大长度（操作2可修改）\n");
                printf("13.系统范围内消息队列的最大数量（操作2可修改）\n");
                printf("14.系统范围内共享内存段的最大数量（操作2可修改）\n");
                printf("15.内核所能使用的线程最大数目（操作2可修改）\n");
                printf("请输入数字以选择您的操作：");
                scanf("%d", &x);
                if(x == 1) myread("/proc/cpuinfo");
                else if(x == 2) myread("/proc/meminfo");
                else if(x == 3) myread("/proc/mounts");
                else if(x == 4) myread("/proc/devices");
                else if(x == 5) myread("/proc/filesystems");
                else if(x == 6) myread("/proc/modules");
                else if(x == 7) myread("/proc/version");
                else if(x == 8) myread("/proc/cmdline");
                else if(x == 9) myread("/proc/uptime");
                else if(x == 10) myread("/proc/sys/net/core/rmem_max");
                else if(x == 11) myread("/proc/sys/net/core/wmem_max");
                else if(x == 12) myread("/proc/sys/kernel/msgmnb");
                else if(x == 13) myread("/proc/sys/kernel/msgmni");
                else if(x == 14) myread("/proc/sys/kernel/shmmni");
                else if(x == 15) myread("/proc/sys/kernel/threads-max");
                else printf("无效输入，即将返回上级菜单。");
                fflush(stdout);
                if(x >= 1 && x <= 15)finish();
                break;
            case 2:
                clear();
                printf("用户您好，您可以通过数字修改下列参数：\n");
                printf("1.最大的TCP数据接收缓冲（操作1可查看）\n");
                printf("2.最大的TCP数据发送缓冲（操作1可查看）\n");
                printf("3.一个消息队列的最大长度（操作1可查看）\n");
                printf("4.系统范围内消息队列的最大数量（操作1可查看）\n");
                printf("5.系统范围内共享内存段的最大数量（操作1可查看）\n");
                printf("6.内核所能使用的线程最大数目（操作1可查看）\n");
                printf("请输入数字以选择您的操作：");
                scanf("%d", &x);
                if(x == 1) mywrite("/proc/sys/net/core/rmem_max", 212992, 425984, 212992);
                else if(x == 2) mywrite("/proc/sys/net/core/wmem_max", 212992, 425984, 212992);
                else if(x == 3) mywrite("/proc/sys/kernel/msgmnb", 8192, 32768, 16384);
                else if(x == 4) mywrite("/proc/sys/kernel/msgmni", 16000, 64000, 32000);
                else if(x == 5) mywrite("/proc/sys/kernel/shmmni", 2048, 8192, 4096);
                else if(x == 6) mywrite("/proc/sys/kernel/threads-max", 39701, 158806, 79403);
                else printf("无效输入，即将返回上级菜单。");
                fflush(stdout);
                if(x >= 1 && x <= 6)finish();
                break;
            case 0:
                printf("程序即将结束...\n");
                exit(0);
            default:
                printf("输入有误，无效操作，正在重置...\n");
        }
    }
}