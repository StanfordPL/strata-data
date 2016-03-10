  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x8, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  movslq %ecx, %r13  #  2     0xa   3      OPC=movslq_r64_r32  
  movq %r13, %rsi    #  3     0xd   3      OPC=movq_r64_r64    
  movzbq %bl, %rbx   #  4     0x10  4      OPC=movzbq_r64_r8   
  xchgl %ebx, %esi   #  5     0x14  2      OPC=xchgl_r32_r32   
  retq               #  6     0x16  1      OPC=retq            
                                                               
.size target, .-target
