  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm4  #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vmulpd %ymm4, %ymm4, %ymm4   #  2     0x4  4      OPC=vmulpd_ymm_ymm_ymm   
  cvtdq2pd %xmm4, %xmm1        #  3     0x8  4      OPC=cvtdq2pd_xmm_xmm     
  retq                         #  4     0xc  1      OPC=retq                 
                                                                             
.size target, .-target
