  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9   #  1     0     5      OPC=callq_label            
  vxorps %xmm8, %xmm8, %xmm12         #  2     0x5   5      OPC=vxorps_xmm_xmm_xmm     
  vunpckhpd %ymm2, %ymm12, %ymm1      #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm3  #  4     0xe   5      OPC=callq_label            
  vxorpd %ymm3, %ymm1, %ymm1          #  5     0x13  4      OPC=vxorpd_ymm_ymm_ymm     
  retq                                #  6     0x17  1      OPC=retq                   
                                                                                       
.size target, .-target
