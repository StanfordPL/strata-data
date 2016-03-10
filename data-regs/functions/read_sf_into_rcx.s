  .text
  .globl read_sf_into_rcx
  .type read_sf_into_rcx, @function
#! maybe-read { %sf }
#! maybe-write { %rcx }
.read_sf_into_rcx:
  # ----------------------------------------------------------------------------
  # read the sf flag into rcx
  # ----------------------------------------------------------------------------
  #
  movq $0x0, %rcx
  sets %cl
  retq

.size read_sf_into_rcx, .-read_sf_into_rcx
  retq
