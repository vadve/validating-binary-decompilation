void leaf() {
  __asm__("vpacksswb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}