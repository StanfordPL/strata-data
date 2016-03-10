  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorq %rax, %rax   #  1     0    3      OPC=xorq_r64_r64    
  setc %bh          #  2     0x3  3      OPC=setc_rh         
  clc               #  3     0x6  1      OPC=clc             
  adcb %bl, %bl     #  4     0x7  2      OPC=adcb_r8_r8      
  movzwl %bx, %ebx  #  5     0x9  3      OPC=movzwl_r32_r16  
  retq              #  6     0xc  1      OPC=retq            
                                                             
.size target, .-target
