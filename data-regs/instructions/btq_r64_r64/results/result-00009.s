  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  sarq %cl, %rbx     #  1     0    3      OPC=sarq_r64_cl     
  movslq %ebx, %rax  #  2     0x3  3      OPC=movslq_r64_r32  
  movswl %ax, %esp   #  3     0x6  3      OPC=movswl_r32_r16  
  sarb $0x1, %spl    #  4     0x9  3      OPC=sarb_r8_one     
  retq               #  5     0xc  1      OPC=retq            
                                                              
.size target, .-target
