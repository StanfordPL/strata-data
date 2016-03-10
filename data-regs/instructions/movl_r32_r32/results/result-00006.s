  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x40, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  xorw %bx, %cx     #  2     0xa  3      OPC=xorw_r16_r16    
  xorl %ecx, %ebx   #  3     0xd  2      OPC=xorl_r32_r32    
  retq              #  4     0xf  1      OPC=retq            
                                                             
.size target, .-target
