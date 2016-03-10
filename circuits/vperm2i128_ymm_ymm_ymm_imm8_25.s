  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vandpd %ymm2, %ymm2, %ymm1  #  1     0     4      OPC=vandpd_ymm_ymm_ymm  
  pmovzxbq %xmm3, %xmm1       #  2     0x4   5      OPC=pmovzxbq_xmm_xmm    
  vpor %ymm1, %ymm1, %ymm5    #  3     0x9   4      OPC=vpor_ymm_ymm_ymm    
  mulpd %xmm5, %xmm1          #  4     0xd   4      OPC=mulpd_xmm_xmm       
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
