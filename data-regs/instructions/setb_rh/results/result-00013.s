  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x6, %rax    #  1     0     10     OPC=movq_r64_imm64  
  movq $0x20, %r13   #  2     0xa   10     OPC=movq_r64_imm64  
  rcll $0x1, %r13d   #  3     0x14  3      OPC=rcll_r32_one    
  decw %r13w         #  4     0x17  4      OPC=decw_r16        
  addw %r13w, %r13w  #  5     0x1b  4      OPC=addw_r16_r16    
  sall $0x1, %eax    #  6     0x1f  2      OPC=sall_r32_one    
  cltq               #  7     0x21  2      OPC=cltq            
  xchgl %eax, %r13d  #  8     0x23  3      OPC=xchgl_r32_r32   
  shll $0x1, %eax    #  9     0x26  2      OPC=shll_r32_one    
  retq               #  10    0x28  1      OPC=retq            
                                                               
.size target, .-target
