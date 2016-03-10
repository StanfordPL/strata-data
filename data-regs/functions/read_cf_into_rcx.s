  .text
  .globl read_cf_into_rcx
  .type read_cf_into_rcx, @function
#! maybe-read { %cf }
#! maybe-write { %rcx }
.read_cf_into_rcx:
  # ----------------------------------------------------------------------------
  # read the cf flag into rcx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rcx
  setnae %cl
  retq

.size read_cf_into_rcx, .-read_cf_into_rcx
  retq
