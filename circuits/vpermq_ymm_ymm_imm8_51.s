  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm8             #  1     0     5      OPC=vpbroadcastq_ymm_xmm     
  vpunpckhqdq %ymm8, %ymm2, %ymm9       #  2     0x5   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovdqa %ymm9, %ymm1                  #  3     0xa   5      OPC=vmovdqa_ymm_ymm          
  callq .move_256_128_ymm1_xmm12_xmm13  #  4     0xf   5      OPC=callq_label              
  movsd %xmm13, %xmm1                   #  5     0x14  5      OPC=movsd_xmm_xmm            
  retq                                  #  6     0x19  1      OPC=retq                     
                                                                                           
.size target, .-target
