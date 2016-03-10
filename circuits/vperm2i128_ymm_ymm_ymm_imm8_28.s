  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vmaxpd %ymm2, %ymm2, %ymm1    #  1     0    4      OPC=vmaxpd_ymm_ymm_ymm  
  vxorps %ymm12, %ymm12, %ymm8  #  2     0x4  5      OPC=vxorps_ymm_ymm_ymm  
  pmovzxdq %xmm8, %xmm1         #  3     0x9  6      OPC=pmovzxdq_xmm_xmm    
  retq                          #  4     0xf  1      OPC=retq                
                                                                             
.size target, .-target
