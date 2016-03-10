  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movb %bh, %bl       #  1     0    2      OPC=movb_r8_rh      
  movw %bx, %di       #  2     0x2  3      OPC=movw_r16_r16    
  cmpxchgb %dil, %cl  #  3     0x5  4      OPC=cmpxchgb_r8_r8  
  retq                #  4     0x9  1      OPC=retq            
                                                               
.size target, .-target
