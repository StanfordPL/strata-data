  .text
  .globl read_cf_into_rbx
  .type read_cf_into_rbx, @function
#! maybe-read { %cf }
#! maybe-write { %rbx }
.read_cf_into_rbx:
  # ----------------------------------------------------------------------------
  # read the cf flag into rbx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rbx
  setnae %bl
  retq

.size read_cf_into_rbx, .-read_cf_into_rbx
  retq
