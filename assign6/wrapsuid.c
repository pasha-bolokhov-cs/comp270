#include <unistd.h>

#define SCRIPT_PATH "/home/bolokhov/comp270/assign6/script-cat.pl"

int main(int argc, char *argv[]) {
  return execv(SCRIPT_PATH, argv);
}
