  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmaxpd %ymm2, %ymm2, %ymm4            #  1     0     4      OPC=vmaxpd_ymm_ymm_ymm       
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label              
  vunpckhpd %xmm11, %xmm4, %xmm10       #  3     0x9   5      OPC=vunpckhpd_xmm_xmm_xmm    
  vbroadcastsd %xmm10, %ymm11           #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_256_128_ymm2_xmm10_xmm11  #  5     0x13  5      OPC=callq_label              
  vpunpckhqdq %ymm11, %ymm4, %ymm1      #  6     0x18  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target
