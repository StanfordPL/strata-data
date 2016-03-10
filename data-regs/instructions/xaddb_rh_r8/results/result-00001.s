  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  movb %ah, %bh    #  1     0     2      OPC=movb_rh_rh    
  movw %bx, %dx    #  2     0x2   3      OPC=movw_r16_r16  
  callq .clear_cf  #  3     0x5   5      OPC=callq_label   
  setb %bl         #  4     0xa   3      OPC=setb_r8       
  xorb %bh, %bl    #  5     0xd   2      OPC=xorb_r8_rh    
  addb %dl, %ah    #  6     0xf   2      OPC=addb_rh_r8    
  retq             #  7     0x11  1      OPC=retq          
                                                           
.size target, .-target
