  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  xorq %r9, %r9     #  1     0     3      OPC=xorq_r64_r64    
  movswq %bx, %rbx  #  2     0x3   4      OPC=movswq_r64_r16  
  adcl %ebx, %r9d   #  3     0x7   3      OPC=adcl_r32_r32    
  rcll $0x1, %r9d   #  4     0xa   3      OPC=rcll_r32_one    
  adcw %bx, %bx     #  5     0xd   3      OPC=adcw_r16_r16    
  retq              #  6     0x10  1      OPC=retq            
                                                              
.size target, .-target
