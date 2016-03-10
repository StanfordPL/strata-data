  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label      
  vzeroall                        #  2     0x5   3      OPC=vzeroall         
  popcntw %r8w, %r8w              #  3     0x8   6      OPC=popcntw_r16_r16  
  cmovnsw %bx, %r8w               #  4     0xe   5      OPC=cmovnsw_r16_r16  
  callq .move_064_128_r8_r9_xmm1  #  5     0x13  5      OPC=callq_label      
  retq                            #  6     0x18  1      OPC=retq             
                                                                             
.size target, .-target
