#include <stdio.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/types.h>
#include <unistd.h>

#define SHM_KEY 5678
#define SHM_SIZE 1024

int main() {
    int shmid;
    char *shmaddr;

    shmid = shmget(SHM_KEY, SHM_SIZE, 0666);
    shmaddr = shmat(shmid, NULL, 0);

    printf("写入共享内存的数据信息为: %s\n", shmaddr);

    shmdt(shmaddr);

    shmctl(shmid, IPC_RMID, NULL);

    return 0;
}
