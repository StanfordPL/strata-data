  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswl %ax, %edi  #  1     0    3      OPC=movswl_r32_r16  
  movq $0x10, %rax  #  2     0x3  10     OPC=movq_r64_imm64  
  xchgl %edi, %eax  #  3     0xd  2      OPC=xchgl_r32_r32   
  retq              #  4     0xf  1      OPC=retq            
                                                             
.size target, .-target
