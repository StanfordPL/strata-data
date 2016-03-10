  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm3   #  1     0    5      OPC=vpbroadcastq_ymm_xmm  
  vmaxss %xmm3, %xmm1, %xmm4  #  2     0x5  4      OPC=vmaxss_xmm_xmm_xmm    
  vpor %xmm4, %xmm4, %xmm1    #  3     0x9  4      OPC=vpor_xmm_xmm_xmm      
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
