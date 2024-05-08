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
                printf("这是parent父进程'%c'\n",word);
                //wait(NULL);
                printf("第%d次循环完成\n",count);
            }else if(pid==0&&time!=0){
                if (count%2==1) {
                    printf("这是第%d个son进程'%c',\n",count,word+i+1);
                }else{
                    printf("这是第%d个daughter进程'%c'\n",count,word+i+1);
                }
                
                return 0;
            }
        }
    }else{
        printf("没有创建子进程\n");
        return 0;
        
    }
}
