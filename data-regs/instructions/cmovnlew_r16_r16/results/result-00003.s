  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movswq %cx, %r12   #  1     0    4      OPC=movswq_r64_r16  
  cmovgw %r12w, %bx  #  2     0x4  5      OPC=cmovgw_r16_r16  
  retq               #  3     0x9  1      OPC=retq            
                                                              
.size target, .-target
