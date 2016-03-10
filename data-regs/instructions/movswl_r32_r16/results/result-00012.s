  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movswq %cx, %rsi                #  1     0     4      OPC=movswq_r64_r16  
  movq $0xffffffffffffff80, %r14  #  2     0x4   10     OPC=movq_r64_imm64  
  movslq %r14d, %rbx              #  3     0xe   3      OPC=movslq_r64_r32  
  xchgl %esi, %ebx                #  4     0x11  2      OPC=xchgl_r32_r32   
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
