  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64   
  cwtl             #  2     0x3  1      OPC=cwtl           
  adcb %al, %bl    #  3     0x4  2      OPC=adcb_r8_r8     
  xaddw %bx, %bx   #  4     0x6  4      OPC=xaddw_r16_r16  
  retq             #  5     0xa  1      OPC=retq           
                                                           
.size target, .-target
