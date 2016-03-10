  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  adcq %rbx, %rbx    #  1     0    3      OPC=adcq_r64_r64    
  cmovzq %rbx, %rbx  #  2     0x3  4      OPC=cmovzq_r64_r64  
  retq               #  3     0x7  1      OPC=retq            
                                                              
.size target, .-target
