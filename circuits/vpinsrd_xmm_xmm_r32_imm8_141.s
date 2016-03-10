  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movd %ebx, %xmm9               #  1     0     5      OPC=movd_xmm_r32           
  vunpcklps %xmm9, %xmm2, %xmm7  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovddup %ymm7, %ymm4          #  3     0xa   4      OPC=vmovddup_ymm_ymm       
  vmovsd %xmm4, %xmm2, %xmm1     #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                           #  5     0x12  1      OPC=retq                   
                                                                                  
.size target, .-target
