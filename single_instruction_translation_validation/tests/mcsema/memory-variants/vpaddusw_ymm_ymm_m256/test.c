void leaf() {
  __asm__("vpaddusw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}