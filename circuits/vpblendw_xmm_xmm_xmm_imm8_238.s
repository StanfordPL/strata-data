  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r8_r9    #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label      
  vzeroall                          #  3     0xa   3      OPC=vzeroall         
  popcntl %r8d, %edx                #  4     0xd   5      OPC=popcntl_r32_r32  
  cmovgew %r13w, %r9w               #  5     0x12  5      OPC=cmovgew_r16_r16  
  cmovnlw %r12w, %r8w               #  6     0x17  5      OPC=cmovnlw_r16_r16  
  callq .move_064_128_r8_r9_xmm1    #  7     0x1c  5      OPC=callq_label      
  retq                              #  8     0x21  1      OPC=retq             
                                                                               
.size target, .-target
