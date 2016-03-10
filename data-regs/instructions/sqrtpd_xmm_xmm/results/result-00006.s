  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vsqrtpd %xmm2, %xmm12  #  1     0    4      OPC=vsqrtpd_xmm_xmm  
  vmovaps %ymm12, %ymm2  #  2     0x4  5      OPC=vmovaps_ymm_ymm  
  movdqa %xmm2, %xmm1    #  3     0x9  4      OPC=movdqa_xmm_xmm   
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
