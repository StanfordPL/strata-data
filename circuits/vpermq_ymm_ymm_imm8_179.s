  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm6               #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm6, %ymm2, %ymm1     #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm8_xmm9  #  3     0x8   5      OPC=callq_label              
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xd   5      OPC=callq_label              
  movsd %xmm9, %xmm1                  #  5     0x12  5      OPC=movsd_xmm_xmm            
  retq                                #  6     0x17  1      OPC=retq                     
                                                                                         
.size target, .-target
