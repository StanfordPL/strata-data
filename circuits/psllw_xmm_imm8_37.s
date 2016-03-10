  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vandnpd %xmm1, %xmm1, %xmm3  #  1     0     4      OPC=vandnpd_xmm_xmm_xmm  
  vmovapd %ymm3, %ymm7         #  2     0x4   4      OPC=vmovapd_ymm_ymm      
  pmovzxbq %xmm3, %xmm1        #  3     0x8   5      OPC=pmovzxbq_xmm_xmm     
  unpcklpd %xmm7, %xmm1        #  4     0xd   4      OPC=unpcklpd_xmm_xmm     
  retq                         #  5     0x11  1      OPC=retq                 
                                                                              
.size target, .-target
