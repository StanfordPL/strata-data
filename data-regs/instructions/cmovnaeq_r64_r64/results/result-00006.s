  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  cmovbq %rcx, %rbx  #  1     0    4      OPC=cmovbq_r64_r64  
  orb %bh, %bh       #  2     0x4  2      OPC=orb_rh_rh       
  retq               #  3     0x6  1      OPC=retq            
                                                              
.size target, .-target