  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  xorq %rax, %rax   #  1     0     3      OPC=xorq_r64_r64    
  movslq %eax, %r8  #  2     0x3   3      OPC=movslq_r64_r32  
  xchgb %cl, %cl    #  3     0x6   2      OPC=xchgb_r8_r8     
  cmovbw %r8w, %cx  #  4     0x8   5      OPC=cmovbw_r16_r16  
  subq %rcx, %rbx   #  5     0xd   3      OPC=subq_r64_r64    
  retq              #  6     0x10  1      OPC=retq            
                                                              
.size target, .-target
