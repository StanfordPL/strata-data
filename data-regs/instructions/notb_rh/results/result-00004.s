  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode          
.target:           #        0    0      OPC=<label>     
  stc              #  1     0    1      OPC=stc         
  setb %r14b       #  2     0x1  4      OPC=setb_r8     
  movb %r14b, %al  #  3     0x5  3      OPC=movb_r8_r8  
  notw %ax         #  4     0x8  3      OPC=notw_r16    
  retq             #  5     0xb  1      OPC=retq        
                                                        
.size target, .-target
