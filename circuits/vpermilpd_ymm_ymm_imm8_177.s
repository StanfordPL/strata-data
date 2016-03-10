  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vpor %ymm2, %ymm2, %ymm11            #  1     0     4      OPC=vpor_ymm_ymm_ymm         
  rcpss %xmm11, %xmm2                  #  2     0x4   5      OPC=rcpss_xmm_xmm            
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x9   5      OPC=callq_label              
  vpunpcklqdq %ymm11, %ymm11, %ymm1    #  4     0xe   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movsd %xmm13, %xmm1                  #  5     0x13  5      OPC=movsd_xmm_xmm            
  retq                                 #  6     0x18  1      OPC=retq                     
                                                                                          
.size target, .-target
