  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP   Bytes  Opcode                
.target:             #        0     0      OPC=<label>           
  xorw %dx, %dx      #  1     0     3      OPC=xorw_r16_r16      
  xorb %al, %al      #  2     0x3   2      OPC=xorb_r8_r8        
  xorb %al, %ah      #  3     0x5   2      OPC=xorb_rh_r8        
  cmovnlew %ax, %dx  #  4     0x7   4      OPC=cmovnlew_r16_r16  
  xorb %al, %ah      #  5     0xb   2      OPC=xorb_rh_r8        
  cmovnaew %ax, %ax  #  6     0xd   4      OPC=cmovnaew_r16_r16  
  xaddb %bl, %dl     #  7     0x11  3      OPC=xaddb_r8_r8       
  testb %ah, %dl     #  8     0x14  2      OPC=testb_r8_rh       
  retq               #  9     0x16  1      OPC=retq              
                                                                 
.size target, .-target
