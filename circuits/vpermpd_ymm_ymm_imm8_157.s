  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vmovhlps %xmm2, %xmm13, %xmm8         #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm     
  movsd %xmm13, %xmm2                   #  3     0x9   5      OPC=movsd_xmm_xmm            
  vpunpcklqdq %ymm2, %ymm8, %ymm9       #  4     0xe   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1    #  5     0x12  5      OPC=callq_label              
  retq                                  #  6     0x17  1      OPC=retq                     
                                                                                           
.size target, .-target
