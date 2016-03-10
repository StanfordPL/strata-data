  .text
  .globl write_dl_to_sf
  .type write_dl_to_sf, @function
#! maybe-read { %dl }
#! maybe-write { %sf }
#! must-undef { %r14 %r15 }
.write_dl_to_sf:
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

  # replicate the last bit in dl to all bits
  movb %dl, %r14b
  shlq $0x3f, %r14
  sarq $0x3f, %r14

  # test if we need to set the flag
  testq %r14, %r14
  je .lbl330
  movq $0x80, %r14 # avoid sign extend when doing the or
  orq %r14, %r15

.lbl330:

  # write new flags
  pushq %r15
  popfq
  retq

.size write_dl_to_sf, .-write_dl_to_sf
  retq
