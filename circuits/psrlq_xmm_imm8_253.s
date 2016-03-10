  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                  
.target:                         #        0    0      OPC=<label>             
  vpaddq %xmm1, %xmm1, %xmm15    #  1     0    4      OPC=vpaddq_xmm_xmm_xmm  
  vxorpd %xmm15, %xmm15, %xmm10  #  2     0x4  5      OPC=vxorpd_xmm_xmm_xmm  
  pmovzxbq %xmm10, %xmm1         #  3     0x9  6      OPC=pmovzxbq_xmm_xmm    
  retq                           #  4     0xf  1      OPC=retq                
                                                                              
.size target, .-target
