  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %bh, %di  #  1     0    4      OPC=movzbw_r16_rh  
  salw $0x1, %di   #  2     0x4  3      OPC=salw_r16_one   
  sbbb %bh, %ah    #  3     0x7  2      OPC=sbbb_rh_rh     
  retq             #  4     0x9  1      OPC=retq           
                                                           
.size target, .-target
