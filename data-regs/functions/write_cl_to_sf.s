  .text
  .globl write_cl_to_sf
  .type write_cl_to_sf, @function
#! maybe-read { %cl }
#! maybe-write { %sf }
#! must-undef { %r14 %r15 }
.write_cl_to_sf:
  # ----------------------------------------------------------------------------
  # set the sf flag
  # ----------------------------------------------------------------------------
  #
  # read flags
  pushfq
  popq %r15

  # zero out sf
  movq $0xffffff7f, %r14 # avoid sign extend when doing the or
  andq %r14, %r15

  # replicate the last bit in cl to all bits
  movb %cl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl320
  movq $0x80, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl320:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_cl_to_sf, .-write_cl_to_sf
  retq
