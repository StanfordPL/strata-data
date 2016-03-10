  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  orq %rcx, %rdx   #  1     0    3      OPC=orq_r64_r64   
  orb %dh, %dh     #  2     0x3  2      OPC=orb_rh_rh     
  subq %rcx, %rdx  #  3     0x5  3      OPC=subq_r64_r64  
  movq %rdx, %rbx  #  4     0x8  3      OPC=movq_r64_r64  
  retq             #  5     0xb  1      OPC=retq          
                                                          
.size target, .-target
