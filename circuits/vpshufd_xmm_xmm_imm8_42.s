  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vbroadcastss %xmm11, %ymm0           #  2     0x5   5      OPC=vbroadcastss_ymm_xmm     
  movsldup %xmm10, %xmm3               #  3     0xa   5      OPC=movsldup_xmm_xmm         
  vmovsldup %ymm0, %ymm5               #  4     0xf   4      OPC=vmovsldup_ymm_ymm        
  punpckldq %xmm3, %xmm5               #  5     0x13  4      OPC=punpckldq_xmm_xmm        
  vpunpckhqdq %xmm5, %xmm0, %xmm1      #  6     0x17  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                 #  7     0x1b  1      OPC=retq                     
                                                                                          
.size target, .-target
