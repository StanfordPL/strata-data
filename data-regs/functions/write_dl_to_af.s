  .text
  .globl write_dl_to_af
  .type write_dl_to_af, @function
#! maybe-read { %dl }
#! maybe-write { %af }
#! must-undef { %r14 %r15 }
.write_dl_to_af:
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

  # replicate the last bit in dl to all bits
  movb %dl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl30
  movq $0x10, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl30:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_dl_to_af, .-write_dl_to_af
  retq
