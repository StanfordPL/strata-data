  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  setnc %r8b       #  1     0     4      OPC=setnc_r8        
  clc              #  2     0x4   1      OPC=clc             
  movq $0x0, %rbx  #  3     0x5   10     OPC=movq_r64_imm64  
  adcb %r8b, %bl   #  4     0xf   3      OPC=adcb_r8_r8      
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
