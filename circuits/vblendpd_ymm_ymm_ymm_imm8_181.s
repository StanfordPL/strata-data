  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vrsqrtps %xmm2, %xmm5            #  1     0    4      OPC=vrsqrtps_xmm_xmm         
  vunpcklpd %ymm3, %ymm5, %ymm4    #  2     0x4  4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm2, %ymm4, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
