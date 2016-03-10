  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r15  #  1     0     10     OPC=movq_r64_imm64  
  movslq %r15d, %r8               #  2     0xa   3      OPC=movslq_r64_r32  
  xorl %r8d, %ebx                 #  3     0xd   3      OPC=xorl_r32_r32    
  retq                            #  4     0x10  1      OPC=retq            
                                                                            
.size target, .-target
