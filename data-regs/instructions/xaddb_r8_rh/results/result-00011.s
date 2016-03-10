  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %bp  #  1     0    4      OPC=movzbw_r16_rh  
  movb %bl, %ah    #  2     0x4  2      OPC=movb_rh_r8     
  xaddb %bpl, %bl  #  3     0x6  4      OPC=xaddb_r8_r8    
  retq             #  4     0xa  1      OPC=retq           
                                                           
.size target, .-target
