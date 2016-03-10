  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x7, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  shll $0x1, %ebx    #  2     0xa   2      OPC=shll_r32_one    
  setnp %bh          #  3     0xc   3      OPC=setnp_rh        
  movswq %cx, %r14   #  4     0xf   4      OPC=movswq_r64_r16  
  xaddl %ebx, %r14d  #  5     0x13  4      OPC=xaddl_r32_r32   
  retq               #  6     0x17  1      OPC=retq            
                                                               
.size target, .-target
