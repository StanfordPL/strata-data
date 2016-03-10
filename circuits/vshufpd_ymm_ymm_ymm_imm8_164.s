  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vunpcklpd %ymm3, %ymm2, %ymm1        #  1     0     4      OPC=vunpcklpd_ymm_ymm_ymm    
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  movlhps %xmm12, %xmm2                #  3     0x9   4      OPC=movlhps_xmm_xmm          
  vpunpckhqdq %ymm1, %ymm2, %ymm1      #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                 #  5     0x11  1      OPC=retq                     
                                                                                          
.size target, .-target
