  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  xorw %r10w, %r10w                   #  1     0     4      OPC=xorw_r16_r16     
  callq .move_byte_2_of_ymm1_to_r8b   #  2     0x4   5      OPC=callq_label      
  cmovnaw %bx, %r8w                   #  3     0x9   5      OPC=cmovnaw_r16_r16  
  callq .move_r8b_to_byte_12_of_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                #  5     0x13  1      OPC=retq             
                                                                                 
.size target, .-target
