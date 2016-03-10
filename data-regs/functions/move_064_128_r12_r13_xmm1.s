  .text
  .globl move_064_128_r12_r13_xmm1
  .type move_064_128_r12_r13_xmm1, @function
#! maybe-read { %r12 %r13 }
#! maybe-write { %xmm1 }
#! must-undef { %ymm15 }
.move_064_128_r12_r13_xmm1:
  # ----------------------------------------------------------------------------
  # moves r12 to the lower 64 bits of xmm1, and r13 to the higher
  # 64 bits.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %r12, %xmm1
  #
  # move the higher bits
  movq %r13, %xmm15
  punpcklqdq %xmm15, %xmm1
  retq

.size move_064_128_r12_r13_xmm1, .-move_064_128_r12_r13_xmm1