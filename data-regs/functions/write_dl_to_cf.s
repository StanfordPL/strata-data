  .text
  .globl write_dl_to_cf
  .type write_dl_to_cf, @function
#! maybe-read { %dl }
#! maybe-write { %cf }
#! must-undef { %r14 %r15 }
.write_dl_to_cf:
  # ----------------------------------------------------------------------------
  # set the cf flag
  # ----------------------------------------------------------------------------
  #
  # read flags
  pushfq
  popq %r15

  # zero out cf
  movq $0xfffffffe, %r14 # avoid sign extend when doing the or
  andq %r14, %r15

  # replicate the last bit in dl to all bits
  movb %dl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl210
  movq $0x1, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl210:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_dl_to_cf, .-write_dl_to_cf
  retq
