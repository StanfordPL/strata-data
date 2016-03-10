  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  cmpl %ebx, %ebx                    #  1     0     2      OPC=cmpl_r32_r32     
  stc                                #  2     0x2   1      OPC=stc              
  callq .move_byte_7_of_ymm1_to_r9b  #  3     0x3   5      OPC=callq_label      
  cmovbel %ebx, %r9d                 #  4     0x8   4      OPC=cmovbel_r32_r32  
  callq .move_r9b_to_byte_8_of_ymm1  #  5     0xc   5      OPC=callq_label      
  retq                               #  6     0x11  1      OPC=retq             
                                                                                
.size target, .-target
