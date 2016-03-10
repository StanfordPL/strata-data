  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  vmovupd %ymm2, %ymm1                  #  1     0    4      OPC=vmovupd_ymm_ymm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  2     0x4  5      OPC=callq_label      
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9  5      OPC=callq_label      
  retq                                  #  4     0xe  1      OPC=retq             
                                                                                  
.size target, .-target
