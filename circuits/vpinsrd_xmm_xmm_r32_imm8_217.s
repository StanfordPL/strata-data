  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovd %ebx, %xmm8              #  1     0     4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm8, %xmm2, %xmm1  #  2     0x4   5      OPC=vunpcklps_xmm_xmm_xmm  
  vmovhlps %xmm2, %xmm1, %xmm10  #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm   
  movlhps %xmm10, %xmm1          #  4     0xd   4      OPC=movlhps_xmm_xmm        
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
