  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %cx  #  1     0    4      OPC=movzbw_r16_rh  
  movzbw %ch, %bp  #  2     0x4  4      OPC=movzbw_r16_rh  
  addb %bpl, %cl   #  3     0x8  3      OPC=addb_r8_r8     
  xchgb %cl, %bh   #  4     0xb  2      OPC=xchgb_rh_r8    
  xchgb %cl, %ah   #  5     0xd  2      OPC=xchgb_rh_r8    
  retq             #  6     0xf  1      OPC=retq           
                                                           
.size target, .-target
