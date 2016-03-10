  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movslq %ebx, %r9                #  1     0     3      OPC=movslq_r64_r32  
  movq $0xffffffffffffffff, %rax  #  2     0x3   10     OPC=movq_r64_imm64  
  xorl %eax, %r9d                 #  3     0xd   3      OPC=xorl_r32_r32    
  movl %r9d, %ebx                 #  4     0x10  3      OPC=movl_r32_r32    
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
