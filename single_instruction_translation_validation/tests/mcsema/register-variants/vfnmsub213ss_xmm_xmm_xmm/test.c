void leaf() {
  __asm__("vfnmsub213ss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}