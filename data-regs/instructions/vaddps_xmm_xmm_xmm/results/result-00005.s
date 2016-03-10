  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm9, %xmm2, %xmm1    #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmaxps %xmm3, %xmm3, %xmm10        #  3     0xa   4      OPC=vmaxps_xmm_xmm_xmm       
  vaddps %ymm10, %ymm1, %ymm13       #  4     0xe   5      OPC=vaddps_ymm_ymm_ymm       
  vmovdqu %ymm13, %ymm1              #  5     0x13  5      OPC=vmovdqu_ymm_ymm          
  retq                               #  6     0x18  1      OPC=retq                     
                                                                                        
.size target, .-target
