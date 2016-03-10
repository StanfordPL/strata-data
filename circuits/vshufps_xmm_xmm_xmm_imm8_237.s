  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovdqu %xmm2, %xmm1             #  1     0     4      OPC=vmovdqu_xmm_xmm         
  vpbroadcastd %xmm1, %ymm6        #  2     0x4   5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckldq %ymm1, %ymm6, %ymm0   #  3     0x9   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhps %xmm2, %xmm0, %xmm11   #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm   
  vunpckhpd %xmm11, %xmm6, %xmm14  #  5     0x11  5      OPC=vunpckhpd_xmm_xmm_xmm   
  vunpckhpd %xmm3, %xmm14, %xmm1   #  6     0x16  4      OPC=vunpckhpd_xmm_xmm_xmm   
  retq                             #  7     0x1a  1      OPC=retq                    
                                                                                     
.size target, .-target
