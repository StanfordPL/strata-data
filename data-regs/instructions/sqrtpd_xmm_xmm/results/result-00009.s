  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vsqrtpd %xmm2, %xmm7   #  1     0    4      OPC=vsqrtpd_xmm_xmm  
  vmovapd %ymm7, %ymm10  #  2     0x4  4      OPC=vmovapd_ymm_ymm  
  movapd %xmm10, %xmm1   #  3     0x8  5      OPC=movapd_xmm_xmm   
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
