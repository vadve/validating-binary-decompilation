void leaf() {
  __asm__("vfnmsub132ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}