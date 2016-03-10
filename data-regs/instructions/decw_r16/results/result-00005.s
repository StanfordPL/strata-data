  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.target:                         #        0     0      OPC=<label>         
  xorq %rax, %rax                #  1     0     3      OPC=xorq_r64_r64    
  movq $0xffffffffffffffff, %r9  #  2     0x3   10     OPC=movq_r64_imm64  
  movslq %r9d, %r13              #  3     0xd   3      OPC=movslq_r64_r32  
  adcw %bx, %r13w                #  4     0x10  4      OPC=adcw_r16_r16    
  movslq %r13d, %rbx             #  5     0x14  3      OPC=movslq_r64_r32  
  retq                           #  6     0x17  1      OPC=retq            
                                                                           
.size target, .-target
