void leaf() {
  __asm__("vpmuludq -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}