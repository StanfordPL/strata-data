  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovdqu %xmm2, %xmm9                  #  1     0     4      OPC=vmovdqu_xmm_xmm          
  callq .move_128_64_xmm3_xmm10_xmm11   #  2     0x4   5      OPC=callq_label              
  vpbroadcastq %xmm10, %ymm13           #  3     0x9   5      OPC=vpbroadcastq_ymm_xmm     
  vaddsd %xmm11, %xmm9, %xmm10          #  4     0xe   5      OPC=vaddsd_xmm_xmm_xmm       
  callq .move_128_256_xmm10_xmm11_ymm2  #  5     0x13  5      OPC=callq_label              
  vpunpcklqdq %ymm2, %ymm13, %ymm1      #  6     0x18  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movups %xmm9, %xmm1                   #  7     0x1c  4      OPC=movups_xmm_xmm           
  retq                                  #  8     0x20  1      OPC=retq                     
                                                                                           
.size target, .-target
