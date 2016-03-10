  .text
  .globl read_zf_into_rcx
  .type read_zf_into_rcx, @function
#! maybe-read { %zf }
#! maybe-write { %rcx }
.read_zf_into_rcx:
  # ----------------------------------------------------------------------------
  # read the zf flag into rcx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rcx
  setz %cl
  retq

.size read_zf_into_rcx, .-read_zf_into_rcx
  retq
