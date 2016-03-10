  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm2, %ymm1  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpckhqdq %xmm3, %xmm2, %xmm6  #  2     0x4   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovaps %xmm6, %xmm3             #  3     0x8   4      OPC=vmovaps_xmm_xmm          
  movapd %xmm3, %xmm1              #  4     0xc   4      OPC=movapd_xmm_xmm           
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
