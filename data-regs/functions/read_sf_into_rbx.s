  .text
  .globl read_sf_into_rbx
  .type read_sf_into_rbx, @function
#! maybe-read { %sf }
#! maybe-write { %rbx }
.read_sf_into_rbx:
  # ----------------------------------------------------------------------------
  # read the sf flag into rbx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rbx
  sets %bl
  retq

.size read_sf_into_rbx, .-read_sf_into_rbx
  retq
