  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  callq .clear_of   #  1     0    5      OPC=callq_label      
  movzwl %cx, %esi  #  2     0x5  3      OPC=movzwl_r32_r16   
  cmovgew %si, %bx  #  3     0x8  4      OPC=cmovgew_r16_r16  
  retq              #  4     0xc  1      OPC=retq             
                                                              
.size target, .-target
