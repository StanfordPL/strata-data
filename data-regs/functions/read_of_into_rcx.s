  .text
  .globl read_of_into_rcx
  .type read_of_into_rcx, @function
#! maybe-read { %of }
#! maybe-write { %rcx }
.read_of_into_rcx:
  # ----------------------------------------------------------------------------
  # read the of flag into rcx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rcx
  seto %cl
  retq

.size read_of_into_rcx, .-read_of_into_rcx
  retq
