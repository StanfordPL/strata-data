  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_byte_7_of_ymm1_to_r9b   #  1     0     5      OPC=callq_label      
  xorw %di, %di                       #  2     0x5   3      OPC=xorw_r16_r16     
  orpd %xmm1, %xmm1                   #  3     0x8   4      OPC=orpd_xmm_xmm     
  cmovnlw %bx, %r9w                   #  4     0xc   5      OPC=cmovnlw_r16_r16  
  callq .move_r9b_to_byte_15_of_ymm1  #  5     0x11  5      OPC=callq_label      
  retq                                #  6     0x16  1      OPC=retq             
                                                                                 
.size target, .-target
