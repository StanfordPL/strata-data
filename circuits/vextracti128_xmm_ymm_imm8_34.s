  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpor %ymm1, %ymm1, %ymm4    #  1     0    4      OPC=vpor_ymm_ymm_ymm   
  movapd %xmm1, %xmm10        #  2     0x4  5      OPC=movapd_xmm_xmm     
  vorpd %xmm10, %xmm4, %xmm1  #  3     0x9  5      OPC=vorpd_xmm_xmm_xmm  
  retq                        #  4     0xe  1      OPC=retq               
                                                                          
.size target, .-target
