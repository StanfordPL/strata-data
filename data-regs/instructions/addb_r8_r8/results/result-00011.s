  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode           
.target:            #        0    0      OPC=<label>      
  movb %cl, %r14b   #  1     0    3      OPC=movb_r8_r8   
  xaddb %r14b, %bl  #  2     0x3  4      OPC=xaddb_r8_r8  
  retq              #  3     0x7  1      OPC=retq         
                                                          
.size target, .-target
