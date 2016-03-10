  .text
  .globl write_cl_to_af
  .type write_cl_to_af, @function
#! maybe-read { %cl }
#! maybe-write { %af }
#! must-undef { %r14 %r15 }
.write_cl_to_af:
  # ----------------------------------------------------------------------------
  # set the af flag
  # ----------------------------------------------------------------------------
  #
  # read flags
  pushfq
  popq %r15

  # zero out af
  movq $0xffffffef, %r14 # avoid sign extend when doing the or
  andq %r14, %r15

  # replicate the last bit in cl to all bits
  movb %cl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl20
  movq $0x10, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl20:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_cl_to_af, .-write_cl_to_af
  retq
