  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnpd %xmm1, %xmm1, %xmm0  #  1     0    4      OPC=vandnpd_xmm_xmm_xmm  
  vmovdqa %ymm0, %ymm9         #  2     0x4  4      OPC=vmovdqa_ymm_ymm      
  cvtdq2pd %xmm9, %xmm1        #  3     0x8  5      OPC=cvtdq2pd_xmm_xmm     
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
