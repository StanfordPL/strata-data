  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  cmpw %bx, %ax     #  1     0    3      OPC=cmpw_r16_r16    
  movzwq %bx, %rax  #  2     0x3  4      OPC=movzwq_r64_r16  
  cmovzw %cx, %bx   #  3     0x7  4      OPC=cmovzw_r16_r16  
  retq              #  4     0xb  1      OPC=retq            
                                                             
.size target, .-target
