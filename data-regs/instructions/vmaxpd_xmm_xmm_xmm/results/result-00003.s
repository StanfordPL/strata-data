  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vminsd %xmm3, %xmm3, %xmm5  #  1     0     4      OPC=vminsd_xmm_xmm_xmm  
  vmaxsd %xmm5, %xmm2, %xmm1  #  2     0x4   4      OPC=vmaxsd_xmm_xmm_xmm  
  vmaxpd %ymm5, %ymm1, %ymm5  #  3     0x8   4      OPC=vmaxpd_ymm_ymm_ymm  
  vpor %xmm5, %xmm5, %xmm1    #  4     0xc   4      OPC=vpor_xmm_xmm_xmm    
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
