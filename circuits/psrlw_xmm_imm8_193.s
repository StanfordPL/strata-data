  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                   
.target:                         #        0    0      OPC=<label>              
  vandnps %xmm1, %xmm1, %xmm15   #  1     0    4      OPC=vandnps_xmm_xmm_xmm  
  vhsubpd %ymm15, %ymm15, %ymm0  #  2     0x4  5      OPC=vhsubpd_ymm_ymm_ymm  
  movdqu %xmm0, %xmm1            #  3     0x9  4      OPC=movdqu_xmm_xmm       
  retq                           #  4     0xd  1      OPC=retq                 
                                                                               
.size target, .-target
