  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_128_064_xmm3_r12_r13   #  1     0     5      OPC=callq_label      
  vmovdqa %ymm2, %ymm1               #  2     0x5   4      OPC=vmovdqa_ymm_ymm  
  callq .move_032_064_r12d_r13d_rbx  #  3     0x9   5      OPC=callq_label      
  xaddw %r12w, %bx                   #  4     0xe   5      OPC=xaddw_r16_r16    
  callq .move_064_128_r12_r13_xmm1   #  5     0x13  5      OPC=callq_label      
  retq                               #  6     0x18  1      OPC=retq             
                                                                                
.size target, .-target
