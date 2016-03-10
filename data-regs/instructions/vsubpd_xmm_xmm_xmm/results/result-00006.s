  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpor %xmm3, %xmm3, %xmm6    #  1     0    4      OPC=vpor_xmm_xmm_xmm    
  vorpd %xmm2, %xmm2, %xmm0   #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm   
  vsubpd %ymm6, %ymm0, %ymm1  #  3     0x8  4      OPC=vsubpd_ymm_ymm_ymm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
