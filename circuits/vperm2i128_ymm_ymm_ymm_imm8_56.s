  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  vmovaps %ymm3, %ymm12  #  1     0    4      OPC=vmovaps_ymm_ymm  
  vmovdqa %ymm12, %ymm1  #  2     0x4  5      OPC=vmovdqa_ymm_ymm  
  andnps %xmm12, %xmm1   #  3     0x9  4      OPC=andnps_xmm_xmm   
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
