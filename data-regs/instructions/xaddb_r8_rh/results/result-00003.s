  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  clc               #  1     0    1      OPC=clc            
  movzbl %ah, %ebp  #  2     0x1  3      OPC=movzbl_r32_rh  
  movq %rbp, %r15   #  3     0x4  3      OPC=movq_r64_r64   
  movb %bl, %ah     #  4     0x7  2      OPC=movb_rh_r8     
  adcb %r15b, %bl   #  5     0x9  3      OPC=adcb_r8_r8     
  retq              #  6     0xc  1      OPC=retq           
                                                            
.size target, .-target
