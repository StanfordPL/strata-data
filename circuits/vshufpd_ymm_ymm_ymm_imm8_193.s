  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  punpckhqdq %xmm3, %xmm2          #  1     0    4      OPC=punpckhqdq_xmm_xmm       
  vpunpcklqdq %ymm3, %ymm2, %ymm6  #  2     0x4  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vorps %ymm6, %ymm6, %ymm1        #  3     0x8  4      OPC=vorps_ymm_ymm_ymm        
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
