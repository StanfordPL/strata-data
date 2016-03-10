  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vandpd %xmm1, %xmm1, %xmm7         #  1     0     4      OPC=vandpd_xmm_xmm_xmm  
  vpmovzxbq %xmm7, %ymm3             #  2     0x4   5      OPC=vpmovzxbq_ymm_xmm   
  callq .move_128_064_xmm3_r8_r9     #  3     0x9   5      OPC=callq_label         
  callq .move_byte_4_of_ymm1_to_r8b  #  4     0xe   5      OPC=callq_label         
  movq %r8, %rbx                     #  5     0x13  3      OPC=movq_r64_r64        
  retq                               #  6     0x16  1      OPC=retq                
                                                                                   
.size target, .-target
