  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label    
  maxps %xmm3, %xmm8                              #  2     0x5   4      OPC=maxps_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm3  #  3     0x9   5      OPC=callq_label    
  callq .move_128_064_xmm3_r8_r9                  #  4     0xe   5      OPC=callq_label    
  vzeroall                                        #  5     0x13  3      OPC=vzeroall       
  callq .move_064_128_r8_r9_xmm1                  #  6     0x16  5      OPC=callq_label    
  retq                                            #  7     0x1b  1      OPC=retq           
                                                                                           
.size target, .-target
