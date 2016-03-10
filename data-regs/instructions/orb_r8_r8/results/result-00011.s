  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  xorw %dx, %dx  #  1     0    3      OPC=xorw_r16_r16  
  setnle %bh     #  2     0x3  3      OPC=setnle_rh     
  setnbe %ch     #  3     0x6  3      OPC=setnbe_rh     
  orw %cx, %bx   #  4     0x9  3      OPC=orw_r16_r16   
  orb %bl, %ch   #  5     0xc  2      OPC=orb_rh_r8     
  retq           #  6     0xe  1      OPC=retq          
                                                        
.size target, .-target
