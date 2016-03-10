  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  xorq %rax, %rax    #  1     0    3      OPC=xorq_r64_r64   
  movsbq %bl, %rdi   #  2     0x3  4      OPC=movsbq_r64_r8  
  movzbq %dil, %rax  #  3     0x7  4      OPC=movzbq_r64_r8  
  adcb %al, %al      #  4     0xb  2      OPC=adcb_r8_r8     
  adcb %bl, %bl      #  5     0xd  2      OPC=adcb_r8_r8     
  retq               #  6     0xf  1      OPC=retq           
                                                             
.size target, .-target
