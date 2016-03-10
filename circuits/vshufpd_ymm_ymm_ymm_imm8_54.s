  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  movsd %xmm2, %xmm3                 #  1     0     4      OPC=movsd_xmm_xmm            
  callq .move_128_64_xmm3_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  vmovddup %ymm3, %ymm11             #  3     0x9   4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm11, %ymm2, %ymm1   #  4     0xd   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x12  5      OPC=callq_label              
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
