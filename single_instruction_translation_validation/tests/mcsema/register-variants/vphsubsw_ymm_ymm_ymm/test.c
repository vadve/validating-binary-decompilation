void leaf() {
  __asm__("vphsubsw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}