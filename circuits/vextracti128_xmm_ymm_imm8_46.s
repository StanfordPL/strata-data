  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmaxsd %xmm1, %xmm1, %xmm3  #  1     0    4      OPC=vmaxsd_xmm_xmm_xmm  
  vpor %ymm3, %ymm1, %ymm5    #  2     0x4  4      OPC=vpor_ymm_ymm_ymm    
  vmaxss %xmm3, %xmm5, %xmm1  #  3     0x8  4      OPC=vmaxss_xmm_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
