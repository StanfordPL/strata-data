  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  xorw %di, %di    #  1     0    3      OPC=xorw_r16_r16    
  cmovaw %di, %ax  #  2     0x3  4      OPC=cmovaw_r16_r16  
  subb %bh, %ah    #  3     0x7  2      OPC=subb_rh_rh      
  retq             #  4     0x9  1      OPC=retq            
                                                            
.size target, .-target
