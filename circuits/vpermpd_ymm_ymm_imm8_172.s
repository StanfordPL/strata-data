  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm2, %ymm1         #  2     0x5   4      OPC=vunpcklpd_ymm_ymm_ymm  
  unpckhpd %xmm13, %xmm13               #  3     0x9   5      OPC=unpckhpd_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1   #  4     0xe   5      OPC=callq_label            
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
