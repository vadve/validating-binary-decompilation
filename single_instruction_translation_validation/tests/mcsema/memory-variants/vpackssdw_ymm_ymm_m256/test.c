void leaf() {
  __asm__("vpackssdw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}