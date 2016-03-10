  .text
  .globl read_pf_into_rbx
  .type read_pf_into_rbx, @function
#! maybe-read { %pf }
#! maybe-write { %rbx }
.read_pf_into_rbx:
  # ----------------------------------------------------------------------------
  # read the pf flag into rbx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rbx
  setp %bl
  retq

.size read_pf_into_rbx, .-read_pf_into_rbx
  retq
