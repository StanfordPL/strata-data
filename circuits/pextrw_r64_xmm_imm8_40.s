  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  vmovq %xmm1, %rbx  #  1     0    5      OPC=vmovq_r64_xmm   
  movzwq %bx, %rbx   #  2     0x5  4      OPC=movzwq_r64_r16  
  retq               #  3     0x9  1      OPC=retq            
                                                              
.size target, .-target
