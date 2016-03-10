  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm12               #  1     0     4      OPC=vmovd_xmm_r32            
  vpbroadcastd %xmm12, %ymm1       #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm     
  vunpckhps %xmm1, %xmm2, %xmm1    #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpcklqdq %xmm1, %xmm2, %xmm7  #  4     0xd   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movupd %xmm7, %xmm1              #  5     0x11  4      OPC=movupd_xmm_xmm           
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
