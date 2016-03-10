  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  cwtl            #  1     0    1      OPC=cwtl           
  xchgw %ax, %bx  #  2     0x1  3      OPC=xchgw_r16_r16  
  retq            #  3     0x4  1      OPC=retq           
                                                          
.size target, .-target
