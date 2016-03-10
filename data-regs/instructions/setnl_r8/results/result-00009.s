  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode          
.target:           #        0    0      OPC=<label>     
  setge %r10b      #  1     0    4      OPC=setge_r8    
  movb %r10b, %bl  #  2     0x4  3      OPC=movb_r8_r8  
  retq             #  3     0x7  1      OPC=retq        
                                                        
.size target, .-target
