void leaf() {
  __asm__("vpsllvq -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}