  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmaxpd %xmm1, %xmm1, %xmm10  #  1     0    4      OPC=vmaxpd_xmm_xmm_xmm  
  vpor %ymm10, %ymm10, %ymm4   #  2     0x4  5      OPC=vpor_ymm_ymm_ymm    
  vmovdqa %xmm4, %xmm1         #  3     0x9  4      OPC=vmovdqa_xmm_xmm     
  retq                         #  4     0xd  1      OPC=retq                
                                                                            
.size target, .-target
