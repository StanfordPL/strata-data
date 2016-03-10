  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movq $0x0, %rbx                    #  1     0     10     OPC=movq_r64_imm64   
  popcntl %ebx, %r9d                 #  2     0xa   5      OPC=popcntl_r32_r32  
  callq .move_r9b_to_byte_2_of_ymm1  #  3     0xf   5      OPC=callq_label      
  callq .move_byte_5_of_ymm1_to_r9b  #  4     0x14  5      OPC=callq_label      
  cmovzq %r9, %rbx                   #  5     0x19  4      OPC=cmovzq_r64_r64   
  retq                               #  6     0x1d  1      OPC=retq             
                                                                                
.size target, .-target
