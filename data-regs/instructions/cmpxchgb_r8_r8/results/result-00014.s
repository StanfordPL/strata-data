  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %bl, %ch      #  1     0    2      OPC=movb_rh_r8      
  movw %cx, %cx      #  2     0x2  3      OPC=movw_r16_r16    
  cmpxchgb %cl, %ch  #  3     0x5  3      OPC=cmpxchgb_rh_r8  
  xchgb %bl, %ch     #  4     0x8  2      OPC=xchgb_rh_r8     
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
