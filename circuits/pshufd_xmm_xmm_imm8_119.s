  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovddup %xmm2, %xmm9              #  1     0     4      OPC=vmovddup_xmm_xmm         
  vunpckhps %xmm9, %xmm2, %xmm5      #  2     0x4   5      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %ymm5, %ymm5, %ymm3    #  3     0x9   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm3_xmm8_xmm9  #  4     0xd   5      OPC=callq_label              
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x12  5      OPC=callq_label              
  retq                               #  6     0x17  1      OPC=retq                     
                                                                                        
.size target, .-target
