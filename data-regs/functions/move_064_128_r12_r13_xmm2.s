  .text
  .globl move_064_128_r12_r13_xmm2
  .type move_064_128_r12_r13_xmm2, @function
#! maybe-read { %r12 %r13 }
#! maybe-write { %xmm2 }
#! must-undef { %ymm15 }
.move_064_128_r12_r13_xmm2:
  # ----------------------------------------------------------------------------
  # moves r12 to the lower 64 bits of xmm2, and r13 to the higher
  # 64 bits.
  # ----------------------------------------------------------------------------
  #
  # move lower bits
  movq %r12, %xmm2
  #
  # move the higher bits
  movq %r13, %xmm15
  punpcklqdq %xmm15, %xmm2
  retq

.size move_064_128_r12_r13_xmm2, .-move_064_128_r12_r13_xmm2