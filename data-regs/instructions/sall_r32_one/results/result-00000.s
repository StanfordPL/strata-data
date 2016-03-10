  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x3, %r12   #  1     0    10     OPC=movq_r64_imm64  
  shll $0x1, %r12d  #  2     0xa  3      OPC=shll_r32_one    
  adcl %ebx, %ebx   #  3     0xd  2      OPC=adcl_r32_r32    
  retq              #  4     0xf  1      OPC=retq            
                                                             
.size target, .-target
