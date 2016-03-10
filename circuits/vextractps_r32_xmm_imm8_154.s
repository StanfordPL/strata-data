  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label      
  vmovdqa %xmm13, %xmm7                #  2     0x5   5      OPC=vmovdqa_xmm_xmm  
  vmovdqu %ymm7, %ymm9                 #  3     0xa   4      OPC=vmovdqu_ymm_ymm  
  movd %xmm9, %ebx                     #  4     0xe   5      OPC=movd_r32_xmm     
  retq                                 #  5     0x13  1      OPC=retq             
                                                                                  
.size target, .-target
