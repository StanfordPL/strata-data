  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                       
.target:                               #        0    0      OPC=<label>                  
  vmovups %ymm2, %ymm13                #  1     0    4      OPC=vmovups_ymm_ymm          
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4  5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm13, %ymm1     #  3     0x9  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                 #  4     0xd  1      OPC=retq                     
                                                                                         
.size target, .-target
