  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x10, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setle %al         #  2     0xa   3      OPC=setle_r8        
  addl %eax, %eax   #  3     0xd   2      OPC=addl_r32_r32    
  decb %al          #  4     0xf   2      OPC=decb_r8         
  sall $0x1, %eax   #  5     0x11  2      OPC=sall_r32_one    
  retq              #  6     0x13  1      OPC=retq            
                                                              
.size target, .-target
