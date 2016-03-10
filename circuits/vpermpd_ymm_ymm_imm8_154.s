  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13   #  1     0     5      OPC=callq_label            
  callq .move_128_256_xmm12_xmm13_ymm3  #  2     0x5   5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm3, %ymm1         #  3     0xa   4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xe   5      OPC=callq_label            
  movddup %xmm13, %xmm1                 #  5     0x13  5      OPC=movddup_xmm_xmm        
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
