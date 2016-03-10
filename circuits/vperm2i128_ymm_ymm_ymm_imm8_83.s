  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  vmovapd %ymm2, %ymm1                  #  1     0    4      OPC=vmovapd_ymm_ymm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4  5      OPC=callq_label      
  movaps %xmm13, %xmm1                  #  3     0x9  4      OPC=movaps_xmm_xmm   
  retq                                  #  4     0xd  1      OPC=retq             
                                                                                  
.size target, .-target
