  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm10   #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklpd %ymm10, %ymm10, %ymm0  #  2     0x4  5      OPC=vunpcklpd_ymm_ymm_ymm  
  movd %xmm0, %ebx                 #  3     0x9  4      OPC=movd_r32_xmm           
  retq                             #  4     0xd  1      OPC=retq                   
                                                                                   
.size target, .-target
