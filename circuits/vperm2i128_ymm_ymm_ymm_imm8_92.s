  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vxorps %xmm3, %xmm2, %xmm3   #  1     0    4      OPC=vxorps_xmm_xmm_xmm   
  andps %xmm3, %xmm2           #  2     0x4  3      OPC=andps_xmm_xmm        
  vmovapd %xmm3, %xmm1         #  3     0x7  4      OPC=vmovapd_xmm_xmm      
  vandnpd %ymm2, %ymm1, %ymm1  #  4     0xb  4      OPC=vandnpd_ymm_ymm_ymm  
  retq                         #  5     0xf  1      OPC=retq                 
                                                                             
.size target, .-target
