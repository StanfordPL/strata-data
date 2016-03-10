  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm11               #  1     0     4      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm11, %xmm1, %xmm0  #  2     0x4   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vminpd %ymm0, %ymm0, %ymm4       #  3     0x9   4      OPC=vminpd_ymm_ymm_ymm      
  movsd %xmm4, %xmm1               #  4     0xd   4      OPC=movsd_xmm_xmm           
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target
