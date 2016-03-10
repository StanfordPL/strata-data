  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %cl, %rcx  #  1     0    4      OPC=movzbq_r64_r8  
  xorq %rbx, %rbx   #  2     0x4  3      OPC=xorq_r64_r64   
  adcw %cx, %bx     #  3     0x7  3      OPC=adcw_r16_r16   
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
