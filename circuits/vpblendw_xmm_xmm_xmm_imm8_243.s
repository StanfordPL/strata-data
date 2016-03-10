  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovss %xmm3, %xmm2, %xmm11   #  1     0    4      OPC=vmovss_xmm_xmm_xmm    
  vpbroadcastq %xmm11, %ymm9    #  2     0x4  5      OPC=vpbroadcastq_ymm_xmm  
  vmovhlps %xmm9, %xmm3, %xmm1  #  3     0x9  5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                          #  4     0xe  1      OPC=retq                  
                                                                               
.size target, .-target
