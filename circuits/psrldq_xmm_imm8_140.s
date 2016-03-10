  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vphsubd %xmm1, %xmm1, %xmm11   #  1     0    5      OPC=vphsubd_xmm_xmm_xmm  
  vandnpd %ymm11, %ymm11, %ymm8  #  2     0x5  5      OPC=vandnpd_ymm_ymm_ymm  
  cvtps2pd %xmm8, %xmm1          #  3     0xa  4      OPC=cvtps2pd_xmm_xmm     
  retq                           #  4     0xe  1      OPC=retq                 
                                                                               
.size target, .-target
