  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x0, %rbp    #  1     0     10     OPC=movq_r64_imm64  
  movw %cx, %bp      #  2     0xa   3      OPC=movw_r16_r16    
  cmovpl %ebp, %ebx  #  3     0xd   3      OPC=cmovpl_r32_r32  
  retq               #  4     0x10  1      OPC=retq            
                                                               
.size target, .-target
