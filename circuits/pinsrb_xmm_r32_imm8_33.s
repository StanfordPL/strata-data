  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode           
.target:                             #        0    0      OPC=<label>      
  xchgb %bl, %bh                     #  1     0    2      OPC=xchgb_rh_r8  
  shlb $0x1, %bl                     #  2     0x2  2      OPC=shlb_r8_one  
  callq .move_016_008_bx_r8b_r9b     #  3     0x4  5      OPC=callq_label  
  callq .move_r9b_to_byte_1_of_ymm1  #  4     0x9  5      OPC=callq_label  
  retq                               #  5     0xe  1      OPC=retq         
                                                                           
.size target, .-target
