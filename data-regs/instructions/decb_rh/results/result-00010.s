  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  xorb %al, %al  #  1     0    2      OPC=xorb_r8_r8  
  cwtd           #  2     0x2  2      OPC=cwtd        
  addb %ah, %dh  #  3     0x4  2      OPC=addb_rh_rh  
  decw %dx       #  4     0x6  3      OPC=decw_r16    
  adcb %dl, %ah  #  5     0x9  2      OPC=adcb_rh_r8  
  retq           #  6     0xb  1      OPC=retq        
                                                      
.size target, .-target
