  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  vmovaps %ymm2, %ymm1                  #  1     0    4      OPC=vmovaps_ymm_ymm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4  5      OPC=callq_label      
  movups %xmm13, %xmm1                  #  3     0x9  4      OPC=movups_xmm_xmm   
  retq                                  #  4     0xd  1      OPC=retq             
                                                                                  
.size target, .-target
