  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm2, %ymm1  #  1     0    4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movaps %xmm3, %xmm1              #  2     0x4  3      OPC=movaps_xmm_xmm           
  vmovsd %xmm2, %xmm2, %xmm5       #  3     0x7  4      OPC=vmovsd_xmm_xmm_xmm       
  movhlps %xmm5, %xmm1             #  4     0xb  3      OPC=movhlps_xmm_xmm          
  retq                             #  5     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
