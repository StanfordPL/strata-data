  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x6, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  movswq %cx, %rdx  #  2     0xa   4      OPC=movswq_r64_r16  
  xaddl %ebx, %edx  #  3     0xe   3      OPC=xaddl_r32_r32   
  retq              #  4     0x11  1      OPC=retq            
                                                              
.size target, .-target
