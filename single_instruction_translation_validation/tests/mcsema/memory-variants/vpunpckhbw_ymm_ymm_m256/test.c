void leaf() {
  __asm__("vpunpckhbw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}