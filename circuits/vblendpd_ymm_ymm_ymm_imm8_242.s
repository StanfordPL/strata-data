  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  movhlps %xmm3, %xmm3  #  1     0    3      OPC=movhlps_xmm_xmm  
  vmovapd %ymm2, %ymm1  #  2     0x3  4      OPC=vmovapd_ymm_ymm  
  movlhps %xmm3, %xmm1  #  3     0x7  3      OPC=movlhps_xmm_xmm  
  retq                  #  4     0xa  1      OPC=retq             
                                                                  
.size target, .-target
