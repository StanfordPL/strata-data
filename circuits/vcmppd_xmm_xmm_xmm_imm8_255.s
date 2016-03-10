  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vzeroall                       #  1     0     3      OPC=vzeroall               
  vdivps %xmm11, %xmm12, %xmm1   #  2     0x3   5      OPC=vdivps_xmm_xmm_xmm     
  vpmovsxwq %xmm1, %ymm2         #  3     0x8   5      OPC=vpmovsxwq_ymm_xmm      
  vmovhlps %xmm2, %xmm14, %xmm6  #  4     0xd   4      OPC=vmovhlps_xmm_xmm_xmm   
  vpmovsxdq %xmm6, %ymm2         #  5     0x11  5      OPC=vpmovsxdq_ymm_xmm      
  vunpckhpd %xmm2, %xmm2, %xmm1  #  6     0x16  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                           #  7     0x1a  1      OPC=retq                   
                                                                                  
.size target, .-target
