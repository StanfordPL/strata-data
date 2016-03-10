  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %xmm1, %rbx  #  1     0    5      OPC=vmovq_r64_xmm  
  xchgb %bl, %bh     #  2     0x5  2      OPC=xchgb_rh_r8    
  movzbq %bl, %rbx   #  3     0x7  4      OPC=movzbq_r64_r8  
  retq               #  4     0xb  1      OPC=retq           
                                                             
.size target, .-target
