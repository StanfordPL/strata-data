  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbq %al, %rdx   #  1     0    4      OPC=movzbq_r64_r8   
  orb %cl, %dh       #  2     0x4  2      OPC=orb_rh_r8       
  cmpxchgb %dh, %bh  #  3     0x6  3      OPC=cmpxchgb_rh_rh  
  retq               #  4     0x9  1      OPC=retq            
                                                              
.size target, .-target
