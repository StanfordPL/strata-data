  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rbp  #  1     0    4      OPC=movsbq_r64_r8  
  clc               #  2     0x4  1      OPC=clc            
  movq %rbp, %r15   #  3     0x5  3      OPC=movq_r64_r64   
  adcb %r15b, %bl   #  4     0x8  3      OPC=adcb_r8_r8     
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
