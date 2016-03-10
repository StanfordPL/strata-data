  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode            
.target:                 #        0     0      OPC=<label>       
  xorb %ah, %bl          #  1     0     2      OPC=xorb_r8_rh    
  callq .set_szp_for_bl  #  2     0x2   5      OPC=callq_label   
  setc %dl               #  3     0x7   3      OPC=setc_r8       
  movb %bl, %dh          #  4     0xa   2      OPC=movb_rh_r8    
  callq .clear_of        #  5     0xc   5      OPC=callq_label   
  movw %dx, %ax          #  6     0x11  3      OPC=movw_r16_r16  
  retq                   #  7     0x14  1      OPC=retq          
                                                                 
.size target, .-target
