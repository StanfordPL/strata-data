  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label        
  callq .move_128_064_xmm2_r8_r9    #  2     0x5   5      OPC=callq_label        
  callq .move_064_128_r10_r11_xmm2  #  3     0xa   5      OPC=callq_label        
  callq .move_064_128_r8_r9_xmm1    #  4     0xf   5      OPC=callq_label        
  vorpd %xmm1, %xmm2, %xmm1         #  5     0x14  4      OPC=vorpd_xmm_xmm_xmm  
  retq                              #  6     0x18  1      OPC=retq               
                                                                                 
.size target, .-target
