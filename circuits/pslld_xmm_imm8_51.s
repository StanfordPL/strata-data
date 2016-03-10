  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  vxorps %xmm10, %xmm10, %xmm10      #  1     0    5      OPC=vxorps_xmm_xmm_xmm       
  vpunpcklqdq %ymm10, %ymm10, %ymm3  #  2     0x5  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movddup %xmm3, %xmm1               #  3     0xa  4      OPC=movddup_xmm_xmm          
  retq                               #  4     0xe  1      OPC=retq                     
                                                                                       
.size target, .-target
