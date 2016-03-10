  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vsubpd %xmm3, %xmm3, %xmm14    #  1     0    4      OPC=vsubpd_xmm_xmm_xmm     
  punpckhqdq %xmm14, %xmm2       #  2     0x4  5      OPC=punpckhqdq_xmm_xmm     
  vunpcklpd %ymm3, %ymm2, %ymm1  #  3     0x9  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
