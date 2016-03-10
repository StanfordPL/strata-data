  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpmovsxwd %xmm3, %ymm1           #  1     0    5      OPC=vpmovsxwd_ymm_xmm        
  vpunpckhqdq %ymm1, %ymm3, %ymm5  #  2     0x5  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm5, %ymm2, %ymm1  #  3     0x9  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
