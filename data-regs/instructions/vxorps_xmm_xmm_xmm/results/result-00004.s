  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_128_064_xmm3_r12_r13  #  1     0     5      OPC=callq_label   
  callq .move_128_064_xmm2_r8_r9    #  2     0x5   5      OPC=callq_label   
  xorq %r13, %r9                    #  3     0xa   3      OPC=xorq_r64_r64  
  vzeroall                          #  4     0xd   3      OPC=vzeroall      
  callq .move_064_128_r12_r13_xmm3  #  5     0x10  5      OPC=callq_label   
  callq .move_128_064_xmm3_r12_r13  #  6     0x15  5      OPC=callq_label   
  xorq %r12, %r8                    #  7     0x1a  3      OPC=xorq_r64_r64  
  callq .move_064_128_r8_r9_xmm1    #  8     0x1d  5      OPC=callq_label   
  retq                              #  9     0x22  1      OPC=retq          
                                                                            
.size target, .-target
