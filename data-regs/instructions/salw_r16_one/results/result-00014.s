  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  movw %bx, %cx   #  1     0    3      OPC=movw_r16_r16   
  movw %cx, %ax   #  2     0x3  3      OPC=movw_r16_r16   
  xaddw %ax, %bx  #  3     0x6  4      OPC=xaddw_r16_r16  
  retq            #  4     0xa  1      OPC=retq           
                                                          
.size target, .-target
