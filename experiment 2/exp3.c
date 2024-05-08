
#include <stdio.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#define MSG_KEY 1234
#define INT_SIZE 1024

typedef struct{
    long mtype;       // message type
    char mtext[200];  // message data
}msgbuf;

void sendMessage(){
    int msgid;
    msgbuf msg;
    msg.mtype=1;
    
    if((msgid=msgget(MSG_KEY,IPC_CREAT))==-1){
        printf("创建msgid出错");
        exit(EXIT_FAILURE);
    };//创建一个从MSG_KEY值派生的消息队列，MSG_KEY通常类似于密钥，确保相互发送信息的程序是在同一条消息队列上
    
    strcpy(msg.mtext,"这是一条测试信息");
    
    msgsnd(msgid,&msg,sizeof(msg.mtext),0);
    
    printf("消息已发送，内容为:%s\n",msg.mtext);
}

void receiveMessage(){
    int msgid;
    msgbuf msg;
    
    if((msgid=msgget(MSG_KEY,IPC_CREAT))==-1){
        printf("创建msgid出错");
        exit(EXIT_FAILURE);
    };//创建一个从MSG_KEY值派生的消息队列，MSG_KEY通常无意义，只是作为一个唯一标识符确保发送信息的程序挂载到同一条消息队列上
    
    
    if(msgrcv(msgid, &msg, sizeof(msg.mtext), 1, 0) == -1) {
            printf("消息接收错误，程序退出\n");
            exit(EXIT_FAILURE);
        } else {
            printf("接收消息成功，消息内容为: %s\n", msg.mtext);
        }
}

int main(int argc,char * argv[]){
    //int pid;
    int count=0;
    char word='a';
    int time=atoi(argv[1]);
    
    char buffer[100];
    //char *message[2];
    char *msg[2] = {"Child 1 is sending a message!","Child 2 is sending a message!"};
    
    if (argc!=2) {
        printf("使用用例./fork [创建进程数]");
    }
    
    int shmid;
    if (shmid=shmget(MSG_KEY,INT_SIZE,0666)) {
        perror("创建shmid出错");
        exit(EXIT_FAILURE);
    }
    
    int shmat;
    if (shmat=shmat(shmid,NULL,0666)) {
        perror("创建shmat出错");
        exit(EXIT_FAILURE);
    }
    
    
    
    if (atoi(argv[1])!=0) {
        for (int i=0; i<time; i++) {
            int pid=fork();
            count++;
            if (pid>0) {
                if (i==0)
                    printf("这是父进程'%c'，父进程的pid为：%d，创建的第%d个子进程的pid为：%d\n",word,getpid(),count,pid);
                wait(NULL);
                printf("第%d次循环完成\n",count);
            }else if(pid==0&&time!=0){
                //close(pipefd[0]);
                printf("这是第%d个子进程'%c',目前的pid为:%d\n",count,word+i+1,getpid());
                if (count==1) {
                    sendMessage();
                }else{
                    receiveMessage();
                }
                
                return 0;
            }
        }
    }else{
        printf("没有创建子进程\n");
        return 0;
        
    }
}
