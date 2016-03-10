  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %xmm1, %rbx  #  1     0    5      OPC=vmovq_r64_xmm  
  xchgw %bx, %bx     #  2     0x5  3      OPC=xchgw_r16_r16  
  retq               #  3     0x8  1      OPC=retq           
                                                             
.size target, .-target
