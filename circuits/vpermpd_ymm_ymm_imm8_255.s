  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm2     #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  vmovdqa %ymm2, %ymm1                #  3     0x9   4      OPC=vmovdqa_ymm_ymm          
  movdqa %xmm9, %xmm1                 #  4     0xd   5      OPC=movdqa_xmm_xmm           
  retq                                #  5     0x12  1      OPC=retq                     
                                                                                         
.size target, .-target
