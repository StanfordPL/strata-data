  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm12      #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  unpckhpd %xmm3, %xmm3                 #  3     0x9   4      OPC=unpckhpd_xmm_xmm         
  vunpcklpd %ymm3, %ymm12, %ymm1        #  4     0xd   4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                                  #  5     0x11  1      OPC=retq                     
                                                                                           
.size target, .-target
