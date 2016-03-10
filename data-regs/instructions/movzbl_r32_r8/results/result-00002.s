  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %cl, %rbx  #  1     0    4      OPC=movzbq_r64_r8  
  retq              #  2     0x4  1      OPC=retq           
                                                            
.size target, .-target
