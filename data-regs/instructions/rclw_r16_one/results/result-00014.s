  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movswq %bx, %rax  #  1     0    4      OPC=movswq_r64_r16  
  adcw %ax, %bx     #  2     0x4  3      OPC=adcw_r16_r16    
  retq              #  3     0x7  1      OPC=retq            
                                                             
.size target, .-target
