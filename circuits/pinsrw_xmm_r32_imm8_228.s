  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label      
  popcntq %r9, %rdx               #  2     0x5   5      OPC=popcntq_r64_r64  
  cmovnbw %bx, %r9w               #  3     0xa   5      OPC=cmovnbw_r16_r16  
  callq .move_064_128_r8_r9_xmm1  #  4     0xf   5      OPC=callq_label      
  retq                            #  5     0x14  1      OPC=retq             
                                                                             
.size target, .-target
