  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vandnpd %xmm1, %xmm4, %xmm12                  #  2     0x5   4      OPC=vandnpd_xmm_xmm_xmm  
  punpckhdq %xmm1, %xmm2                        #  3     0x9   4      OPC=punpckhdq_xmm_xmm    
  callq .move_128_64_xmm2_xmm8_xmm9             #  4     0xd   5      OPC=callq_label          
  vandps %ymm12, %ymm12, %ymm8                  #  5     0x12  5      OPC=vandps_ymm_ymm_ymm   
  callq .move_64_128_xmm8_xmm9_xmm1             #  6     0x17  5      OPC=callq_label          
  retq                                          #  7     0x1c  1      OPC=retq                 
                                                                                               
.size target, .-target
