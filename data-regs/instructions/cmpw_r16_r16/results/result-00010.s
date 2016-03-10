  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwl %cx, %r12d  #  1     0    4      OPC=movzwl_r32_r16  
  subw %r12w, %bx    #  2     0x4  4      OPC=subw_r16_r16    
  retq               #  3     0x8  1      OPC=retq            
                                                              
.size target, .-target
