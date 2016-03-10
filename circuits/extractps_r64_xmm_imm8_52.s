  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_128_064_xmm1_r8_r9     #  1     0    5      OPC=callq_label   
  callq .move_r9b_to_byte_4_of_ymm1  #  2     0x5  5      OPC=callq_label   
  movd %xmm1, %ebx                   #  3     0xa  4      OPC=movd_r32_xmm  
  retq                               #  4     0xe  1      OPC=retq          
                                                                            
.size target, .-target
