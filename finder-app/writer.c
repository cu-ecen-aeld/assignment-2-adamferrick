#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <syslog.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        syslog(LOG_ERR, "Invalid Number of arguments: %d\n", argc - 1);
        return 1;
    }
    int fd = open(argv[1], O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
    if (fd == -1) {
        syslog(LOG_ERR, "Path does not exist: %s\n", argv[1]);
        return 1;
    }
    write(fd, argv[2], strlen(argv[2]));
    syslog(LOG_DEBUG, "Writing %s to %s\n", argv[2], argv[1]);
    close(fd);
    return 0;
}
