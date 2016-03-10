  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text               #  Line  RIP  Bytes  Opcode            
.target:             #        0    0      OPC=<label>       
  movq %xmm1, %xmm7  #  1     0    4      OPC=movq_xmm_xmm  
  movq %xmm7, %rbx   #  2     0x4  5      OPC=movq_r64_xmm  
  orb %bh, %bh       #  3     0x9  2      OPC=orb_rh_rh     
  retq               #  4     0xb  1      OPC=retq          
                                                            
.size target, .-target
