  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x6, %r8   #  1     0     10     OPC=movq_r64_imm64  
  clc              #  2     0xa   1      OPC=clc             
  adcw %r8w, %r8w  #  3     0xb   4      OPC=adcw_r16_r16    
  adcb %bl, %bl    #  4     0xf   2      OPC=adcb_r8_r8      
  retq             #  5     0x11  1      OPC=retq            
                                                             
.size target, .-target
