  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movsbq %cl, %rdx  #  1     0     4      OPC=movsbq_r64_r8   
  movq $0x0, %rax   #  2     0x4   10     OPC=movq_r64_imm64  
  xchgw %bx, %ax    #  3     0xe   3      OPC=xchgw_r16_r16   
  xchgw %cx, %dx    #  4     0x11  3      OPC=xchgw_r16_r16   
  movzbw %bh, %di   #  5     0x14  4      OPC=movzbw_r16_rh   
  xorq %rdx, %rax   #  6     0x18  3      OPC=xorq_r64_r64    
  addw %ax, %bx     #  7     0x1b  3      OPC=addw_r16_r16    
  addw %bx, %di     #  8     0x1e  3      OPC=addw_r16_r16    
  retq              #  9     0x21  1      OPC=retq            
                                                              
.size target, .-target
