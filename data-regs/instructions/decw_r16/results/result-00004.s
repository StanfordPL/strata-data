  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r15  #  1     0     10     OPC=movq_r64_imm64  
  clc                             #  2     0xa   1      OPC=clc             
  adcw %bx, %r15w                 #  3     0xb   4      OPC=adcw_r16_r16    
  movswq %r15w, %rbx              #  4     0xf   4      OPC=movswq_r64_r16  
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
