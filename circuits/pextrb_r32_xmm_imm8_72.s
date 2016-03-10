  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  xorq %rbx, %rbx                    #  1     0    3      OPC=xorq_r64_r64    
  movl %ebx, %r8d                    #  2     0x3  3      OPC=movl_r32_r32    
  callq .move_byte_8_of_ymm1_to_r8b  #  3     0x6  5      OPC=callq_label     
  cmovzq %r8, %rbx                   #  4     0xb  4      OPC=cmovzq_r64_r64  
  retq                               #  5     0xf  1      OPC=retq            
                                                                              
.size target, .-target
