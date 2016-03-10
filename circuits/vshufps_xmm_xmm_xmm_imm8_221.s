  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm9, %xmm2, %xmm11    #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vmovddup %xmm3, %xmm12             #  3     0xa   4      OPC=vmovddup_xmm_xmm         
  vmovaps %xmm3, %xmm10              #  4     0xe   4      OPC=vmovaps_xmm_xmm          
  vunpckhps %xmm10, %xmm12, %xmm1    #  5     0x12  5      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %ymm1, %ymm11, %ymm1   #  6     0x17  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                               #  7     0x1b  1      OPC=retq                     
                                                                                        
.size target, .-target
