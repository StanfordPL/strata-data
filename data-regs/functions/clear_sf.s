  .text
  .globl clear_sf
  .type clear_sf, @function
#! maybe-read { }
#! maybe-write { %sf }
#! must-undef { %r15 }
.clear_sf:
  # ----------------------------------------------------------------------------
  # clear the sf flag
  # ----------------------------------------------------------------------------
  #
  pushfq
  popq %r15
  andq $0xffffff7f, %r15
  pushq %r15
  popfq
  retq

.size clear_sf, .-clear_sf
  retq
