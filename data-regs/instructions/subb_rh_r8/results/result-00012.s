  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  clc            #  1     0    1      OPC=clc         
  cmc            #  2     0x1  1      OPC=cmc         
  cmc            #  3     0x2  1      OPC=cmc         
  sbbb %bl, %ah  #  4     0x3  2      OPC=sbbb_rh_r8  
  retq           #  5     0x5  1      OPC=retq        
                                                      
.size target, .-target
