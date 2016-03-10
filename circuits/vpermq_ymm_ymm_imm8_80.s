  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vorpd %ymm2, %ymm2, %ymm3           #  1     0     4      OPC=vorpd_ymm_ymm_ymm      
  callq .move_128_64_xmm3_xmm8_xmm9   #  2     0x4   5      OPC=callq_label            
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x9   5      OPC=callq_label            
  vunpcklpd %ymm1, %ymm1, %ymm1       #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                #  5     0x12  1      OPC=retq                   
                                                                                       
.size target, .-target
