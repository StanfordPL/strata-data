  .text
  .globl write_dl_to_pf
  .type write_dl_to_pf, @function
#! maybe-read { %dl }
#! maybe-write { %pf }
#! must-undef { %r14 %r15 }
.write_dl_to_pf:
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

  # replicate the last bit in dl to all bits
  movb %dl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl270
  movq $0x4, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl270:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_dl_to_pf, .-write_dl_to_pf
  retq
