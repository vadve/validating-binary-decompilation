void leaf() {
  __asm__("vpsubsw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}