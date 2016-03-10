  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm3, %xmm2, %xmm7  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movlhps %xmm7, %xmm3             #  2     0x4  3      OPC=movlhps_xmm_xmm          
  vorps %ymm3, %ymm3, %ymm1        #  3     0x7  4      OPC=vorps_ymm_ymm_ymm        
  retq                             #  4     0xb  1      OPC=retq                     
                                                                                     
.size target, .-target
