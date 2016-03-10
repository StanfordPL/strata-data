  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movzwl %bx, %esi  #  1     0    3      OPC=movzwl_r32_r16  
  adcw %si, %bx     #  2     0x3  4      OPC=adcw_r16_r16    
  adcw %si, %si     #  3     0x7  3      OPC=adcw_r16_r16    
  retq              #  4     0xa  1      OPC=retq            
                                                             
.size target, .-target
