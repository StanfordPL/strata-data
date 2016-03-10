  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xchgq %rbx, %rax  #  1     0    2      OPC=xchgq_rax_r64  
  movw %bx, %bx     #  2     0x2  3      OPC=movw_r16_r16   
  retq              #  3     0x5  1      OPC=retq           
                                                            
.size target, .-target
