  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vcvttpd2dq %xmm1, %xmm10       #  1     0    4      OPC=vcvttpd2dq_xmm_xmm   
  vandnpd %ymm10, %ymm10, %ymm9  #  2     0x4  5      OPC=vandnpd_ymm_ymm_ymm  
  pmovzxwq %xmm9, %xmm1          #  3     0x9  6      OPC=pmovzxwq_xmm_xmm     
  retq                           #  4     0xf  1      OPC=retq                 
                                                                               
.size target, .-target
