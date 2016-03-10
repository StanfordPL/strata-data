  .text
  .globl write_cl_to_of
  .type write_cl_to_of, @function
#! maybe-read { %cl }
#! maybe-write { %of }
#! must-undef { %r14 %r15 }
.write_cl_to_of:
  # ----------------------------------------------------------------------------
  # set the of flag
  # ----------------------------------------------------------------------------
  #
  # read flags
  pushfq
  popq %r15

  # zero out of
  movq $0xfffff7ff, %r14 # avoid sign extend when doing the or
  andq %r14, %r15

  # replicate the last bit in cl to all bits
  movb %cl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl80
  movq $0x800, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl80:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_cl_to_of, .-write_cl_to_of
  retq
