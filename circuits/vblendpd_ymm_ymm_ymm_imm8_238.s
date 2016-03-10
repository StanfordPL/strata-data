  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm3, %xmm2, %xmm7  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vminpd %ymm3, %ymm3, %ymm1       #  2     0x4   4      OPC=vminpd_ymm_ymm_ymm       
  vmovdqa %ymm7, %ymm0             #  3     0x8   4      OPC=vmovdqa_ymm_ymm          
  movsd %xmm0, %xmm1               #  4     0xc   4      OPC=movsd_xmm_xmm            
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
