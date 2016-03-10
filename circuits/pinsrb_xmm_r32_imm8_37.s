  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  popcntw %bx, %r9w                  #  1     0     6      OPC=popcntw_r16_r16  
  xaddw %r9w, %bx                    #  2     0x6   5      OPC=xaddw_r16_r16    
  callq .move_r9b_to_byte_5_of_ymm1  #  3     0xb   5      OPC=callq_label      
  retq                               #  4     0x10  1      OPC=retq             
                                                                                
.size target, .-target
