  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  xorq %rax, %rax    #  1     0     3      OPC=xorq_r64_r64    
  cmovel %ebx, %ebx  #  2     0x3   3      OPC=cmovel_r32_r32  
  xaddl %eax, %ebx   #  3     0x6   3      OPC=xaddl_r32_r32   
  cltq               #  4     0x9   2      OPC=cltq            
  sarq $0x1, %rax    #  5     0xb   3      OPC=sarq_r64_one    
  xchgl %ebx, %eax   #  6     0xe   2      OPC=xchgl_r32_r32   
  retq               #  7     0x10  1      OPC=retq            
                                                               
.size target, .-target
