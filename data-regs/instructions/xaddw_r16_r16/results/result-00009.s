  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzwl %bx, %ebp  #  1     0    3      OPC=movzwl_r32_r16  
  addw %cx, %bx     #  2     0x3  3      OPC=addw_r16_r16    
  movw %bp, %cx     #  3     0x6  3      OPC=movw_r16_r16    
  retq              #  4     0x9  1      OPC=retq            
                                                             
.size target, .-target
