  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovd %ebx, %xmm11               #  1     0     4      OPC=vmovd_xmm_r32          
  maxsd %xmm1, %xmm1               #  2     0x4   4      OPC=maxsd_xmm_xmm          
  vunpcklps %xmm11, %xmm1, %xmm11  #  3     0x8   5      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm11, %xmm1              #  4     0xd   5      OPC=movsd_xmm_xmm          
  retq                             #  5     0x12  1      OPC=retq                   
                                                                                    
.size target, .-target
