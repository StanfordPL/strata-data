  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpor %ymm1, %ymm1, %ymm4    #  1     0    4      OPC=vpor_ymm_ymm_ymm    
  vmaxpd %ymm1, %ymm4, %ymm7  #  2     0x4  4      OPC=vmaxpd_ymm_ymm_ymm  
  vorps %xmm7, %xmm7, %xmm1   #  3     0x8  4      OPC=vorps_xmm_xmm_xmm   
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
