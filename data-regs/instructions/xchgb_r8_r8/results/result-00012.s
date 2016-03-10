  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movsbl %cl, %r14d   #  1     0    4      OPC=movsbl_r32_r8   
  movzbl %bl, %ecx    #  2     0x4  3      OPC=movzbl_r32_r8   
  movzwl %r14w, %r8d  #  3     0x7  4      OPC=movzwl_r32_r16  
  movslq %r8d, %rbx   #  4     0xb  3      OPC=movslq_r64_r32  
  retq                #  5     0xe  1      OPC=retq            
                                                               
.size target, .-target
