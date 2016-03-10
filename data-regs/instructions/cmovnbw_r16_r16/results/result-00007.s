  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  setnb %r9b       #  1     0    4      OPC=setnb_r8        
  decb %r9b        #  2     0x4  3      OPC=decb_r8         
  cmovew %cx, %bx  #  3     0x7  4      OPC=cmovew_r16_r16  
  retq             #  4     0xb  1      OPC=retq            
                                                            
.size target, .-target
