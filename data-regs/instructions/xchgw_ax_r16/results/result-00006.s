  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  cwtl            #  1     0    1      OPC=cwtl           
  cltq            #  2     0x1  2      OPC=cltq           
  cltq            #  3     0x3  2      OPC=cltq           
  xchgw %bx, %ax  #  4     0x5  3      OPC=xchgw_r16_r16  
  cwtl            #  5     0x8  1      OPC=cwtl           
  retq            #  6     0x9  1      OPC=retq           
                                                          
.size target, .-target
