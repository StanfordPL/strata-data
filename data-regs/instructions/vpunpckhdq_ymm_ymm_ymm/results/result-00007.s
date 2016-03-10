  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                     
.target:                                #        0    0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0    5      OPC=callq_label            
  callq .move_128_256_xmm10_xmm11_ymm1  #  2     0x5  5      OPC=callq_label            
  vunpckhps %ymm3, %ymm1, %ymm1         #  3     0xa  4      OPC=vunpckhps_ymm_ymm_ymm  
  retq                                  #  4     0xe  1      OPC=retq                   
                                                                                        
.size target, .-target
