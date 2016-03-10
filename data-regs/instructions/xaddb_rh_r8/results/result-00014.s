  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %bp  #  1     0    4      OPC=movzbw_r16_rh  
  addb %bl, %ah    #  2     0x4  2      OPC=addb_rh_r8     
  movb %bpl, %bl   #  3     0x6  3      OPC=movb_r8_r8     
  retq             #  4     0x9  1      OPC=retq           
                                                           
.size target, .-target
