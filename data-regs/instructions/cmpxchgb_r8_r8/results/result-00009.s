  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setnb %ch          #  1     0    3      OPC=setnb_rh        
  orb %cl, %cl       #  2     0x3  2      OPC=orb_r8_r8       
  movb %bl, %bh      #  3     0x5  2      OPC=movb_rh_r8      
  cmpxchgb %bl, %bh  #  4     0x7  3      OPC=cmpxchgb_rh_r8  
  cmovew %cx, %bx    #  5     0xa  4      OPC=cmovew_r16_r16  
  retq               #  6     0xe  1      OPC=retq            
                                                              
.size target, .-target
