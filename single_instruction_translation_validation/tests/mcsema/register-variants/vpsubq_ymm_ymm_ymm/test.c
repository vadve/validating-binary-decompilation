void leaf() {
  __asm__("vpsubq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}