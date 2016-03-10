  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  movd %ebx, %xmm2                 #  1     0     4      OPC=movd_xmm_r32           
  vunpckhps %xmm1, %xmm1, %xmm6    #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  vbroadcastss %xmm2, %xmm13       #  3     0x8   5      OPC=vbroadcastss_xmm_xmm   
  vunpckhps %ymm6, %ymm13, %ymm10  #  4     0xd   4      OPC=vunpckhps_ymm_ymm_ymm  
  punpcklqdq %xmm10, %xmm1         #  5     0x11  5      OPC=punpcklqdq_xmm_xmm     
  retq                             #  6     0x16  1      OPC=retq                   
                                                                                    
.size target, .-target
