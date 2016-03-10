  .text
  .globl read_pf_into_rcx
  .type read_pf_into_rcx, @function
#! maybe-read { %pf }
#! maybe-write { %rcx }
.read_pf_into_rcx:
  # ----------------------------------------------------------------------------
  # read the pf flag into rcx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rcx
  setp %cl
  retq

.size read_pf_into_rcx, .-read_pf_into_rcx
  retq
