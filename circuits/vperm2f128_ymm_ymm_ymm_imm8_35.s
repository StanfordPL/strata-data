  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovaps %xmm11, %xmm10                #  2     0x5   5      OPC=vmovaps_xmm_xmm  
  movaps %xmm3, %xmm11                  #  3     0xa   4      OPC=movaps_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label      
  retq                                  #  5     0x13  1      OPC=retq             
                                                                                   
.size target, .-target
