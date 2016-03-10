  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  vpbroadcastq %xmm3, %xmm15         #  1     0    5      OPC=vpbroadcastq_xmm_xmm     
  vpunpcklqdq %xmm15, %xmm2, %xmm12  #  2     0x5  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovaps %ymm12, %ymm1              #  3     0xa  5      OPC=vmovaps_ymm_ymm          
  retq                               #  4     0xf  1      OPC=retq                     
                                                                                       
.size target, .-target
