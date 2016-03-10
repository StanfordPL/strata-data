  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  callq .clear_cf  #  1     0    5      OPC=callq_label  
  sbbb %bh, %ah    #  2     0x5  2      OPC=sbbb_rh_rh   
  retq             #  3     0x7  1      OPC=retq         
                                                         
.size target, .-target
