void leaf() {
  __asm__("btsq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}