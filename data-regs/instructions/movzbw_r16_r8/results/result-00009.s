  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %cl, %r13  #  1     0    4      OPC=movzbq_r64_r8  
  movw %r13w, %bx   #  2     0x4  4      OPC=movw_r16_r16   
  retq              #  3     0x8  1      OPC=retq           
                                                            
.size target, .-target
