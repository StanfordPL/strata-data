  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movswq %ax, %r12  #  1     0     4      OPC=movswq_r64_r16  
  subw %bx, %r12w   #  2     0x4   4      OPC=subw_r16_r16    
  movzwq %bx, %rax  #  3     0x8   4      OPC=movzwq_r64_r16  
  cmovzw %cx, %ax   #  4     0xc   4      OPC=cmovzw_r16_r16  
  xchgw %ax, %bx    #  5     0x10  2      OPC=xchgw_r16_ax    
  retq              #  6     0x12  1      OPC=retq            
                                                              
.size target, .-target
