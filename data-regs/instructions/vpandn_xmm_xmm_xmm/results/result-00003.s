  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovups %xmm2, %xmm15  #  1     0    4      OPC=vmovups_xmm_xmm  
  andnpd %xmm3, %xmm15   #  2     0x4  5      OPC=andnpd_xmm_xmm   
  vmovapd %ymm15, %ymm1  #  3     0x9  5      OPC=vmovapd_ymm_ymm  
  retq                   #  4     0xe  1      OPC=retq             
                                                                   
.size target, .-target
