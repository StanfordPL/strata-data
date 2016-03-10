  .text
  .globl write_dl_to_zf
  .type write_dl_to_zf, @function
#! maybe-read { %dl }
#! maybe-write { %zf }
#! must-undef { %r14 %r15 }
.write_dl_to_zf:
  # ----------------------------------------------------------------------------
  # set the zf flag
  # ----------------------------------------------------------------------------
  #
  # read flags
  pushfq
  popq %r15

  # zero out zf
  movq $0xffffffbf, %r14 # avoid sign extend when doing the or
  andq %r14, %r15

  # replicate the last bit in dl to all bits
  movb %dl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl150
  movq $0x40, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl150:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_dl_to_zf, .-write_dl_to_zf
  retq
