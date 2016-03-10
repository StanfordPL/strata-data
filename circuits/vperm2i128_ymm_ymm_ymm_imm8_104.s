  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  callq .move_128_064_xmm3_r12_r13    #  1     0     5      OPC=callq_label   
  vzeroall                            #  2     0x5   3      OPC=vzeroall      
  callq .move_064_128_r12_r13_xmm2    #  3     0x8   5      OPC=callq_label   
  orps %xmm2, %xmm9                   #  4     0xd   4      OPC=orps_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  5     0x11  5      OPC=callq_label   
  retq                                #  6     0x16  1      OPC=retq          
                                                                              
.size target, .-target
