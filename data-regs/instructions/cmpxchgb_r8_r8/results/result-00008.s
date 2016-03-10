  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbl %cl, %edi   #  1     0    3      OPC=movzbl_r32_r8   
  cmpb %bl, %al      #  2     0x3  2      OPC=cmpb_r8_r8      
  movzbq %bl, %rax   #  3     0x5  4      OPC=movzbq_r64_r8   
  cmovzq %rdi, %rbx  #  4     0x9  4      OPC=cmovzq_r64_r64  
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
