  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP   Bytes  Opcode             
.target:          #        0     0      OPC=<label>        
  xorb %al, %al   #  1     0     2      OPC=xorb_r8_r8     
  setge %cl       #  2     0x2   3      OPC=setge_r8       
  setc %bl        #  3     0x5   3      OPC=setc_r8        
  salb $0x1, %cl  #  4     0x8   2      OPC=salb_r8_one    
  adcb %bh, %bl   #  5     0xa   2      OPC=adcb_r8_rh     
  xchgw %bx, %ax  #  6     0xc   3      OPC=xchgw_r16_r16  
  addb %bh, %al   #  7     0xf   2      OPC=addb_r8_rh     
  addw %bx, %ax   #  8     0x11  3      OPC=addw_r16_r16   
  retq            #  9     0x14  1      OPC=retq           
                                                           
.size target, .-target
