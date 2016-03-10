  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  subw %bx, %ax     #  1     0    3      OPC=subw_r16_r16    
  movzwl %bx, %eax  #  2     0x3  3      OPC=movzwl_r32_r16  
  cmovzw %cx, %bx   #  3     0x6  4      OPC=cmovzw_r16_r16  
  retq              #  4     0xa  1      OPC=retq            
                                                             
.size target, .-target
