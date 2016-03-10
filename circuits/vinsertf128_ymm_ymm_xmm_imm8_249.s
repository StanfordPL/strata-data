  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  vmovaps %ymm2, %ymm1                  #  1     0     4      OPC=vmovaps_ymm_ymm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label      
  vmovaps %xmm3, %xmm11                 #  3     0x9   4      OPC=vmovaps_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xd   5      OPC=callq_label      
  retq                                  #  5     0x12  1      OPC=retq             
                                                                                   
.size target, .-target
