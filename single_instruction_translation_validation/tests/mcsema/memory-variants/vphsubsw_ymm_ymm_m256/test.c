void leaf() {
  __asm__("vphsubsw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}