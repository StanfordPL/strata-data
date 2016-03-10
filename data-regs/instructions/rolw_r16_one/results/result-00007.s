  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  clc               #  1     0    1      OPC=clc             
  movswq %bx, %r15  #  2     0x1  4      OPC=movswq_r64_r16  
  rcll $0x1, %r15d  #  3     0x5  3      OPC=rcll_r32_one    
  adcw %bx, %bx     #  4     0x8  3      OPC=adcw_r16_r16    
  retq              #  5     0xb  1      OPC=retq            
                                                             
.size target, .-target
