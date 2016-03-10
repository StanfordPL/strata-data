  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  callq .set_cf     #  1     0    5      OPC=callq_label     
  movzwl %bx, %esi  #  2     0x5  3      OPC=movzwl_r32_r16  
  adcw %bx, %si     #  3     0x8  3      OPC=adcw_r16_r16    
  adcw %bx, %bx     #  4     0xb  3      OPC=adcw_r16_r16    
  retq              #  5     0xe  1      OPC=retq            
                                                             
.size target, .-target
