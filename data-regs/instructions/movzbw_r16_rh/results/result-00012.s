  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  clc                               #  1     0     1      OPC=clc          
  callq .read_cf_into_rcx           #  2     0x1   5      OPC=callq_label  
  movb %ah, %cl                     #  3     0x6   2      OPC=movb_r8_rh   
  callq .move_016_008_cx_r10b_r11b  #  4     0x8   5      OPC=callq_label  
  callq .move_008_016_r10b_r11b_bx  #  5     0xd   5      OPC=callq_label  
  retq                              #  6     0x12  1      OPC=retq         
                                                                           
.size target, .-target
