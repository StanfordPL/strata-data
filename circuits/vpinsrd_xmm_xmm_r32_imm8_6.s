  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  movd %ebx, %xmm5                   #  1     0     4      OPC=movd_xmm_r32             
  vrcpss %xmm2, %xmm2, %xmm11        #  2     0x4   4      OPC=vrcpss_xmm_xmm_xmm       
  vpunpckhqdq %xmm11, %xmm11, %xmm4  #  3     0x8   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movss %xmm5, %xmm4                 #  4     0xd   4      OPC=movss_xmm_xmm            
  vmovupd %xmm2, %xmm14              #  5     0x11  4      OPC=vmovupd_xmm_xmm          
  vunpcklpd %ymm4, %ymm14, %ymm1     #  6     0x15  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                               #  7     0x19  1      OPC=retq                     
                                                                                        
.size target, .-target
