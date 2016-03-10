  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzwl %bx, %ebx   #  1     0    3      OPC=movzwl_r32_r16  
  movswq %bx, %r12   #  2     0x3  4      OPC=movswq_r64_r16  
  rcll $0x1, %ebx    #  3     0x7  2      OPC=rcll_r32_one    
  addw %r12w, %r12w  #  4     0x9  4      OPC=addw_r16_r16    
  retq               #  5     0xd  1      OPC=retq            
                                                              
.size target, .-target
