  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  pmovsxdq %xmm1, %xmm4          #  1     0     5      OPC=pmovsxdq_xmm_xmm       
  vpor %xmm4, %xmm4, %xmm0       #  2     0x5   4      OPC=vpor_xmm_xmm_xmm       
  vmovupd %ymm0, %ymm0           #  3     0x9   4      OPC=vmovupd_ymm_ymm        
  vunpckhpd %xmm0, %xmm4, %xmm9  #  4     0xd   4      OPC=vunpckhpd_xmm_xmm_xmm  
  movd %xmm9, %ebx               #  5     0x11  5      OPC=movd_r32_xmm           
  retq                           #  6     0x16  1      OPC=retq                   
                                                                                  
.size target, .-target
