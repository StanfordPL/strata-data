  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  movhlps %xmm1, %xmm1            #  1     0     3      OPC=movhlps_xmm_xmm        
  vunpcklps %xmm1, %xmm1, %xmm10  #  2     0x3   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovdqu %xmm1, %xmm4            #  3     0x7   4      OPC=vmovdqu_xmm_xmm        
  vunpckhpd %ymm4, %ymm10, %ymm8  #  4     0xb   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovd %xmm8, %ebx               #  5     0xf   4      OPC=vmovd_r32_xmm          
  retq                            #  6     0x13  1      OPC=retq                   
                                                                                   
.size target, .-target
