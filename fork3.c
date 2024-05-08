#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc,char * argv[]){
    int pid;
    int count=0;
    char word='a';
    int time=atoi(argv[1]);
    
    if (argc!=2) {
        printf("使用用例./fork [创建进程数]");
    }
    
    if (atoi(argv[1])!=0) {
        for (int i=0; i<time; i++) {
            int pid=fork();
            count++;
            if (pid>0) {
                printf("这是父进程'%c'，父进程的pid为：%d，创建的第%d个子进程的pid为：%d\n",word,getpid(),count,pid);
                wait(NULL);
                printf("第%d次循环完成\n",count);
            }else if(pid==0&&time!=0){
                printf("这是第%d个子进程'%c',目前的pid为:%d\n这个进程会调用ls函数打印当前文件夹下的内容",count,word+i+1,getpid());
                execl("/bin/ls", "ls", NULL);
                return 0;
            }
        }
    }else{
        printf("没有创建子进程\n");
        return 0;
        
    }
}
