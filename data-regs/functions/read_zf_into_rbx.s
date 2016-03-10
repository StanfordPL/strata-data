  .text
  .globl read_zf_into_rbx
  .type read_zf_into_rbx, @function
#! maybe-read { %zf }
#! maybe-write { %rbx }
.read_zf_into_rbx:
  # ----------------------------------------------------------------------------
  # read the zf flag into rbx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rbx
  setz %bl
  retq

.size read_zf_into_rbx, .-read_zf_into_rbx
  retq
