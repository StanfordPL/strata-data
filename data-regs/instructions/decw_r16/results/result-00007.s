  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP  Bytes  Opcode              
.target:                         #        0    0      OPC=<label>         
  movq $0xffffffffffffffff, %r8  #  1     0    10     OPC=movq_r64_imm64  
  clc                            #  2     0xa  1      OPC=clc             
  adcw %r8w, %bx                 #  3     0xb  4      OPC=adcw_r16_r16    
  retq                           #  4     0xf  1      OPC=retq            
                                                                          
.size target, .-target
