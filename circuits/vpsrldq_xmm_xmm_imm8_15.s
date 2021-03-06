  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label      
  vzeroall                           #  2     0x5   3      OPC=vzeroall         
  popcntw %r8w, %r9w                 #  3     0x8   6      OPC=popcntw_r16_r16  
  bswap %r9                          #  4     0xe   3      OPC=bswap_r64        
  callq .move_r9b_to_byte_0_of_ymm1  #  5     0x11  5      OPC=callq_label      
  retq                               #  6     0x16  1      OPC=retq             
                                                                                
.size target, .-target
