  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm3                #  1     0     4      OPC=vmovd_xmm_r32           
  vpbroadcastq %xmm3, %ymm0        #  2     0x4   5      OPC=vpbroadcastq_ymm_xmm    
  vdivsd %xmm0, %xmm2, %xmm1       #  3     0x9   4      OPC=vdivsd_xmm_xmm_xmm      
  vpunpckhdq %ymm0, %ymm1, %ymm11  #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %xmm11, %xmm2, %xmm1   #  5     0x11  5      OPC=vunpcklpd_xmm_xmm_xmm   
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
