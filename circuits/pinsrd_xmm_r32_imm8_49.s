  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovd %ebx, %xmm11               #  1     0     4      OPC=vmovd_xmm_r32          
  vmovsd %xmm1, %xmm1, %xmm12      #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm     
  vunpcklps %ymm11, %ymm12, %ymm5  #  3     0x8   5      OPC=vunpcklps_ymm_ymm_ymm  
  movsd %xmm5, %xmm1               #  4     0xd   4      OPC=movsd_xmm_xmm          
  retq                             #  5     0x11  1      OPC=retq                   
                                                                                    
.size target, .-target
