  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovd %ebx, %xmm3              #  1     0     4      OPC=vmovd_xmm_r32          
  vunpckhpd %xmm3, %xmm2, %xmm1  #  2     0x4   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklps %ymm3, %ymm1, %ymm7  #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm  
  movups %xmm2, %xmm1            #  4     0xc   3      OPC=movups_xmm_xmm         
  vmovlhps %xmm7, %xmm1, %xmm1   #  5     0xf   4      OPC=vmovlhps_xmm_xmm_xmm   
  retq                           #  6     0x13  1      OPC=retq                   
                                                                                  
.size target, .-target
