  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %ah, %dx  #  1     0    4      OPC=movsbw_r16_rh  
  addb %dh, %dh    #  2     0x4  2      OPC=addb_rh_rh     
  seto %al         #  3     0x6  3      OPC=seto_r8        
  negw %ax         #  4     0x9  3      OPC=negw_r16       
  negb %dl         #  5     0xc  2      OPC=negb_r8        
  retq             #  6     0xe  1      OPC=retq           
                                                           
.size target, .-target
