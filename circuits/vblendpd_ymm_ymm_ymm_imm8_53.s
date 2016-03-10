  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vpbroadcastq %xmm3, %xmm5      #  1     0     5      OPC=vpbroadcastq_xmm_xmm   
  vunpcklpd %ymm3, %ymm5, %ymm5  #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movlhps %xmm5, %xmm5           #  3     0x9   3      OPC=movlhps_xmm_xmm        
  vunpckhpd %ymm2, %ymm5, %ymm1  #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
