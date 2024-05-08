#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

int main(int argc,char * argv[]){
    //int pid;
    int count=0;
    char word='a';
    int time=atoi(argv[1]);
    
    int pipefd[2];
    char buffer[100];
    //char *message[2];
    char *msg[2] = {"Child 1 is sending a message!","Child 2 is sending a message!"};
    
    if (argc!=2) {
        printf("使用用例./fork [创建进程数]");
    }
    
    if (pipe(pipefd) == -1) {
        perror("pipe");
        exit(EXIT_FAILURE);
    }
    
    if (atoi(argv[1])!=0) {
        for (int i=0; i<time; i++) {
            int pid=fork();
            count++;
            if (pid>0) {
                printf("这是父进程'%c'，父进程的pid为：%d，创建的第%d个子进程的pid为：%d\n",word,getpid(),count,pid);
                wait(NULL);
                    read(pipefd[0], buffer, strlen(msg[count-1]));
                    printf("父进程接收到%s\n",buffer);
                printf("第%d次循环完成\n",count);
            }else if(pid==0&&time!=0){
                //close(pipefd[0]);
                printf("这是第%d个子进程'%c',目前的pid为:%d\n",count,word+i+1,getpid());
                write(pipefd[1], msg[count-1], strlen(msg[count-1]));
                //close(pipefd[1]);
                //printf("%s,%s",msg[count-1],msg[count-1]);
                return 0;
            }
        }
    }else{
        printf("没有创建子进程\n");
        return 0;
        
    }
    close(pipefd[1]);
    close(pipefd[0]);
}
