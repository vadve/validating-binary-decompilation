void leaf() {
  __asm__("vfmsub132ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}