void leaf() {
  __asm__("vhaddps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}