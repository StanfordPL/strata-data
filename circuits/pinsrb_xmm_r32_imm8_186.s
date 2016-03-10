  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  popcntw %bx, %r8w                   #  1     0     6      OPC=popcntw_r16_r16  
  setnbe %bh                          #  2     0x6   3      OPC=setnbe_rh        
  xaddw %r8w, %bx                     #  3     0x9   5      OPC=xaddw_r16_r16    
  callq .move_r8b_to_byte_10_of_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                #  5     0x13  1      OPC=retq             
                                                                                 
.size target, .-target
