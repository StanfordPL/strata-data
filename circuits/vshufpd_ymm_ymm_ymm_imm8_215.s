  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm0        #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  callq .move_128_64_xmm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  punpckhqdq %xmm13, %xmm3             #  3     0x9   5      OPC=punpckhqdq_xmm_xmm       
  vpunpcklqdq %ymm3, %ymm0, %ymm1      #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                 #  5     0x12  1      OPC=retq                     
                                                                                          
.size target, .-target
