  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rcx  #  1     0    4      OPC=movsbq_r64_r8  
  notq %rcx         #  2     0x4  3      OPC=notq_r64       
  movsbq %cl, %rbx  #  3     0x7  4      OPC=movsbq_r64_r8  
  retq              #  4     0xb  1      OPC=retq           
                                                            
.size target, .-target
