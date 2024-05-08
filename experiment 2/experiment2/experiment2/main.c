//
//  main.c
//  experiment2
//
//  Created by Louis on 4/2/24.
//

#include <stdio.h>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

//int main(int argc,char * argv[]){
//    //int pid;
//    int count=0;
//    char word='a';
//    int time=atoi(argv[1]);
//    
//    int pipefd[2];
//    char buffer[100];
//    //char *message[2];
//    char *msg[2] = {"Child 1 is sending a message!\n","Child 2 is sending a message!\n"};
//    
//    if (argc!=2) {
//        printf("使用用例./fork [创建进程数]");
//    }
//    
//    if (pipe(pipefd) == -1) {
//        perror("pipe");
//        exit(EXIT_FAILURE);
//    }
//    
//    if (atoi(argv[1])!=0) {
//        for (int i=0; i<time; i++) {
//            int pid=fork();
//            count++;
//            if (pid>0) {
//                printf("这是父进程'%c'，父进程的pid为：%d，创建的第%d个子进程的pid为：%d\n",word,getpid(),count,pid);
//                wait(NULL);
//                close(pipefd[1]);
//                for (int i=0; i<time; i++){
//                    read(pipefd[0], buffer, sizeof(msg));
//                    printf("父进程接收到%s\n",buffer);
//                }
//                close(pipefd[0]);
//                printf("第%d次循环完成\n",count);
//            }else if(pid==0&&time!=0){
//                //close(pipefd[0]);
//                printf("这是第%d个子进程'%c',目前的pid为:%d\n",count,word+i+1,getpid());
//                write(pipefd[1], msg[count], sizeof(msg[count]));
//                //close(pipefd[1]);
//                return 0;
//            }
//        }
//    }else{
//        printf("没有创建子进程\n");
//        return 0;
//        
//    }
//}

//#include <stdio.h>
//#include <stdlib.h>
//#include <unistd.h>
//#include <string.h>
//#include <sys/wait.h>
//
//int main(int argc,char * argv[]) {
//    int pipefd[2];
//    char buffer[100];
//
//    if (pipe(pipefd) == -1) {
//        perror("pipe");
//        exit(EXIT_FAILURE);
//    }
//
//    for (int i = 0; i < 2; i++) {
//        int pid = fork();
//        if (pid > 0) {
//            // 父进程
//            wait(NULL); // 等待子进程完成
//        } else if (pid == 0) {
//            // 子进程
//            close(pipefd[0]); // 关闭读端
//            if (i == 0) {
//                char *message = "Child 1 is sending a message!\n";
//                write(pipefd[1], message, strlen(message)+1); // 写入管道
//            } else {
//                char *message = "Child 2 is sending a message!\n";
//                write(pipefd[1], message, strlen(message)+1); // 写入管道
//            }
//            close(pipefd[1]); // 写完后关闭写端
//            exit(0);
//        } else {
//            perror("fork");
//            exit(EXIT_FAILURE);
//        }
//    }
//
//    close(pipefd[1]); // 父进程关闭写端
//    while (read(pipefd[0], buffer, sizeof(buffer)) > 0) {
//        printf("父进程接收到: %s", buffer);
//    }
//    close(pipefd[0]); // 读完后关闭读端
//
//    return 0;
//}
#define MSG_KEY 1234
//typedef struct{
//    long mtype;       // message type
//    char mtext[200];  // message data
//}msgbuf;
//
//void sendMessage(){
//
//    int msgid=msgget(MSG_KEY,IPC_CREAT);//创建一个值为MSG_KEY的消息队列
//    
//    
//}
//int main(){
//    int msgid=msgget(MSG_KEY,IPC_CREAT);
//    printf("%d\n",msgid);
//    return 0;
//}
typedef struct{
    long mtype;       // message type
    char mtext[200];  // message data
}msgbuf;

void sendMessage(){
    int msgid;
    if((msgid=msgget(MSG_KEY,IPC_CREAT))==-1){
        printf("创建msgid出错");
        exit(EXIT_FAILURE);
    };//创建一个从MSG_KEY值派生的消息队列，MSG_KEY通常类似于密钥，确保相互发送信息的程序是在同一条消息队列上
    
    msgbuf msg;
    msg.mtype=1;
    strcpy(msg.mtext,"test");
    
    msgsnd(msgid,&msg,sizeof(msg.mtext),0);
    
    printf("消息已发送，内容为:%s",msg.mtext);
}

void receiveMessage(){
    int msgid;
    if((msgid=msgget(MSG_KEY,IPC_CREAT))==-1){
        perror("创建msgid出错\n");
        exit(EXIT_FAILURE);
    };//创建一个从MSG_KEY值派生的消息队列，MSG_KEY通常无意义，只是作为一个唯一标识符确保发送信息的程序挂载到同一条消息队列上
    
    msgbuf msg;
    //msgrcv(msgid,&msg,sizeof(msg.mtext),1,0);
//    if(msgrcv(msgid,&msg,sizeof(msg.mtext),1,0)==-1){
//        printf("消息接收错误，程序退出");
//        exit(EXIT_FAILURE);
//    }
//    else{
//        printf("接收到消息成功，消息内容为%s",msg.mtext);
//    }
    if(msgrcv(msgid, &msg, sizeof(msg.mtext), 1, 0) == -1) {
        perror("消息接收错误，程序退出\n");
        exit(EXIT_FAILURE);
        } else {
            printf("接收到消息成功，消息内容为: %s\n", msg.mtext);
        }
}
int main() {
    pid_t pid = fork();

    if (pid < 0) {
        perror("fork failed");
        exit(1);
    }
    if (pid == 0) {
        // Child process: sender
        sleep(1); // Ensure receiver is ready
        sendMessage();
    } else {
        // Parent process: receiver
        receiveMessage();
    }

    return 0;
}
