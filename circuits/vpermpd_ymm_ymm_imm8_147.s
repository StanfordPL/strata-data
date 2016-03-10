  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11   #  1     0     5      OPC=callq_label            
  callq .move_128_256_xmm10_xmm11_ymm1  #  2     0x5   5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm1, %ymm1         #  4     0xf   4      OPC=vunpcklpd_ymm_ymm_ymm  
  movhlps %xmm13, %xmm1                 #  5     0x13  4      OPC=movhlps_xmm_xmm        
  retq                                  #  6     0x17  1      OPC=retq                   
                                                                                         
.size target, .-target
