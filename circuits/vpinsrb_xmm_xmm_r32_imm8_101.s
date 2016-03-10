  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  xorb %bh, %bh                      #  1     0     2      OPC=xorb_rh_rh       
  callq .move_128_064_xmm2_r8_r9     #  2     0x2   5      OPC=callq_label      
  vzeroall                           #  3     0x7   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm1     #  4     0xa   5      OPC=callq_label      
  cmovncw %bx, %r9w                  #  5     0xf   5      OPC=cmovncw_r16_r16  
  callq .move_r9b_to_byte_5_of_ymm1  #  6     0x14  5      OPC=callq_label      
  retq                               #  7     0x19  1      OPC=retq             
                                                                                
.size target, .-target
