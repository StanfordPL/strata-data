  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP   Bytes  Opcode               
.target:                         #        0     0      OPC=<label>          
  movq $0xffffffffffffffff, %r9  #  1     0     10     OPC=movq_r64_imm64   
  popcntq %r9, %r15              #  2     0xa   5      OPC=popcntq_r64_r64  
  adcw %r9w, %bx                 #  3     0xf   4      OPC=adcw_r16_r16     
  retq                           #  4     0x13  1      OPC=retq             
                                                                            
.size target, .-target
