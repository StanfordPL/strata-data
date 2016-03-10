  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vmovapd %ymm3, %ymm1         #  1     0    4      OPC=vmovapd_ymm_ymm      
  vandnps %xmm1, %xmm1, %xmm5  #  2     0x4  4      OPC=vandnps_xmm_xmm_xmm  
  pmovsxdq %xmm5, %xmm1        #  3     0x8  5      OPC=pmovsxdq_xmm_xmm     
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
