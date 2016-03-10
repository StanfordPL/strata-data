  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode            
.target:             #        0    0      OPC=<label>       
  xorw %r14w, %r14w  #  1     0    4      OPC=xorw_r16_r16  
  setnl %al          #  2     0x4  3      OPC=setnl_r8      
  movw %ax, %cx      #  3     0x7  3      OPC=movw_r16_r16  
  addb %bh, %ah      #  4     0xa  2      OPC=addb_rh_rh    
  movw %cx, %bx      #  5     0xc  3      OPC=movw_r16_r16  
  retq               #  6     0xf  1      OPC=retq          
                                                            
.size target, .-target
