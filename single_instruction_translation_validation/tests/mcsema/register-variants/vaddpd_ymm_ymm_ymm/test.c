void leaf() {
  __asm__("vaddpd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}