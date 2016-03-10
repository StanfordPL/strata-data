  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label   
  callq .move_128_064_xmm3_r8_r9    #  2     0x5   5      OPC=callq_label   
  movq %r9, %r12                    #  3     0xa   3      OPC=movq_r64_r64  
  vzeroall                          #  4     0xd   3      OPC=vzeroall      
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label   
  retq                              #  6     0x15  1      OPC=retq          
                                                                            
.size target, .-target
