void leaf() {
  __asm__("vdpps $0x0, -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}