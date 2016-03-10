  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  movlhps %xmm2, %xmm2           #  1     0    3      OPC=movlhps_xmm_xmm        
  punpckhqdq %xmm2, %xmm3        #  2     0x3  4      OPC=punpckhqdq_xmm_xmm     
  vunpckhpd %ymm3, %ymm2, %ymm4  #  3     0x7  4      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpcklpd %ymm3, %ymm4, %ymm1  #  4     0xb  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                           #  5     0xf  1      OPC=retq                   
                                                                                 
.size target, .-target
