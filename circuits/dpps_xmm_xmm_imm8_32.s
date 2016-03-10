  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vaddpd %xmm2, %xmm2, %xmm5   #  1     0    4      OPC=vaddpd_xmm_xmm_xmm   
  vandnps %ymm5, %ymm5, %ymm5  #  2     0x4  4      OPC=vandnps_ymm_ymm_ymm  
  cvtps2pd %xmm5, %xmm1        #  3     0x8  3      OPC=cvtps2pd_xmm_xmm     
  retq                         #  4     0xb  1      OPC=retq                 
                                                                             
.size target, .-target
