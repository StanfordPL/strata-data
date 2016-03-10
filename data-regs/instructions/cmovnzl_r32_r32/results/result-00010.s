  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode              
.target:                            #        0    0      OPC=<label>         
  cmovzq %rbx, %rcx                 #  1     0    4      OPC=cmovzq_r64_r64  
  movl %ecx, %r8d                   #  2     0x4  3      OPC=movl_r32_r32    
  callq .move_r8b_to_byte_6_of_rbx  #  3     0x7  5      OPC=callq_label     
  xchgl %ecx, %ebx                  #  4     0xc  2      OPC=xchgl_r32_r32   
  retq                              #  5     0xe  1      OPC=retq            
                                                                             
.size target, .-target
