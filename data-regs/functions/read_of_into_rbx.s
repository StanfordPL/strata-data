  .text
  .globl read_of_into_rbx
  .type read_of_into_rbx, @function
#! maybe-read { %of }
#! maybe-write { %rbx }
.read_of_into_rbx:
  # ----------------------------------------------------------------------------
  # read the of flag into rbx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rbx
  seto %bl
  retq

.size read_of_into_rbx, .-read_of_into_rbx
  retq
