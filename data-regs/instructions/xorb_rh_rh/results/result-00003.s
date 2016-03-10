  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  xorb %bl, %bl    #  1     0     2      OPC=xorb_r8_r8     
  xaddb %ah, %bl   #  2     0x2   3      OPC=xaddb_r8_rh    
  movsbw %ah, %ax  #  3     0x5   4      OPC=movsbw_r16_rh  
  notw %bx         #  4     0x9   3      OPC=notw_r16       
  xorb %bh, %bl    #  5     0xc   2      OPC=xorb_r8_rh     
  addb %bl, %ah    #  6     0xe   2      OPC=addb_rh_r8     
  retq             #  7     0x10  1      OPC=retq           
                                                            
.size target, .-target
