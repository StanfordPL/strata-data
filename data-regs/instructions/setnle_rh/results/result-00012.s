  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode          
.target:           #        0    0      OPC=<label>     
  setle %dil       #  1     0    4      OPC=setle_r8    
  addb %dil, %dil  #  2     0x4  3      OPC=addb_r8_r8  
  setz %ah         #  3     0x7  3      OPC=setz_rh     
  retq             #  4     0xa  1      OPC=retq        
                                                        
.size target, .-target
