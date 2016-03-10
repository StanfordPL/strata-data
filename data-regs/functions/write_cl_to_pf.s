  .text
  .globl write_cl_to_pf
  .type write_cl_to_pf, @function
#! maybe-read { %cl }
#! maybe-write { %pf }
#! must-undef { %r14 %r15 }
.write_cl_to_pf:
  # ----------------------------------------------------------------------------
  # set the pf flag
  # ----------------------------------------------------------------------------
  #
  # read flags
  pushfq
  popq %r15

  # zero out pf
  movq $0xfffffffb, %r14 # avoid sign extend when doing the or
  andq %r14, %r15

  # replicate the last bit in cl to all bits
  movb %cl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl260
  movq $0x4, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl260:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_cl_to_pf, .-write_cl_to_pf
  retq
