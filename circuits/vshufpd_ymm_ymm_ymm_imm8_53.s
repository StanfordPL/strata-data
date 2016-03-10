  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpcklpd %ymm3, %ymm3, %ymm0  #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm  
  vunpckhpd %ymm0, %ymm2, %ymm1  #  2     0x4  4      OPC=vunpckhpd_ymm_ymm_ymm  
  punpcklqdq %xmm0, %xmm1        #  3     0x8  4      OPC=punpcklqdq_xmm_xmm     
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
