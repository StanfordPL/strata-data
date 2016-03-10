  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm13  #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  unpcklps %xmm13, %xmm1      #  2     0x5  4      OPC=unpcklps_xmm_xmm      
  retq                        #  3     0x9  1      OPC=retq                  
                                                                             
.size target, .-target
