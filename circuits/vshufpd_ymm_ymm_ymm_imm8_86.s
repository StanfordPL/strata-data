  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovddup %ymm3, %ymm6              #  1     0     4      OPC=vmovddup_ymm_ymm         
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  movaps %xmm2, %xmm8                #  3     0x9   4      OPC=movaps_xmm_xmm           
  vpunpckhqdq %ymm6, %ymm2, %ymm1    #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x11  5      OPC=callq_label              
  retq                               #  6     0x16  1      OPC=retq                     
                                                                                        
.size target, .-target
