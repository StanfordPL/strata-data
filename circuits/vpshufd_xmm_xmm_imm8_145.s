  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpmovsxdq %xmm2, %xmm0            #  1     0     5      OPC=vpmovsxdq_xmm_xmm        
  vpunpckhdq %xmm2, %xmm0, %xmm5    #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpckhqdq %ymm5, %ymm0, %ymm13  #  3     0x9   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %xmm0, %xmm13, %xmm1   #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm   
  punpcklqdq %xmm5, %xmm1           #  5     0x11  4      OPC=punpcklqdq_xmm_xmm       
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
