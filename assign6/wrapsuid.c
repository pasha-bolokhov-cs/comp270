#include <unistd.h>

#define SCRIPT_PATH "/usr/bin/script-cat.pl"

int main(int argc, char *argv[]) {
  return execv(SCRIPT_PATH, argv);
}
