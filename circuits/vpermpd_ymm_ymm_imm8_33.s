  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm7        #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  maxss %xmm7, %xmm2               #  2     0x5   4      OPC=maxss_xmm_xmm            
  punpckhqdq %xmm2, %xmm2          #  3     0x9   4      OPC=punpckhqdq_xmm_xmm       
  vpunpcklqdq %ymm7, %ymm2, %ymm1  #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
