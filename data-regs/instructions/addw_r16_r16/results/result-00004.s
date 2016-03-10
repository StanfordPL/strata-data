  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  callq .clear_cf    #  1     0     5      OPC=callq_label     
  movzwl %cx, %r10d  #  2     0x5   4      OPC=movzwl_r32_r16  
  movq $0x5, %r15    #  3     0x9   10     OPC=movq_r64_imm64  
  rcll $0x1, %r15d   #  4     0x13  3      OPC=rcll_r32_one    
  rcll $0x1, %r15d   #  5     0x16  3      OPC=rcll_r32_one    
  adcw %r10w, %bx    #  6     0x19  4      OPC=adcw_r16_r16    
  retq               #  7     0x1d  1      OPC=retq            
                                                               
.size target, .-target
