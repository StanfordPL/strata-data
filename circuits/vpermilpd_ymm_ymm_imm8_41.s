  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm11  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  unpckhpd %xmm11, %xmm2      #  2     0x5  5      OPC=unpckhpd_xmm_xmm      
  vandps %ymm2, %ymm2, %ymm1  #  3     0xa  4      OPC=vandps_ymm_ymm_ymm    
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
