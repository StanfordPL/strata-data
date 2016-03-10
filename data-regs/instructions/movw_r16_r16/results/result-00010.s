  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  clc              #  1     0     1      OPC=clc             
  movq $0x0, %rbx  #  2     0x1   10     OPC=movq_r64_imm64  
  adcb %bl, %bl    #  3     0xb   2      OPC=adcb_r8_r8      
  rolb $0x1, %bl   #  4     0xd   2      OPC=rolb_r8_one     
  xchgw %bx, %cx   #  5     0xf   3      OPC=xchgw_r16_r16   
  retq             #  6     0x12  1      OPC=retq            
                                                             
.size target, .-target
