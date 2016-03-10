  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm4                 #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm4, %ymm2, %ymm1       #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm12_xmm13  #  3     0x8   5      OPC=callq_label              
  movaps %xmm13, %xmm1                  #  4     0xd   4      OPC=movaps_xmm_xmm           
  retq                                  #  5     0x11  1      OPC=retq                     
                                                                                           
.size target, .-target
