  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  xaddb %al, %ah   #  1     0    3      OPC=xaddb_rh_r8    
  cbtw             #  2     0x3  2      OPC=cbtw           
  movsbw %ah, %dx  #  3     0x5  4      OPC=movsbw_r16_rh  
  retq             #  4     0x9  1      OPC=retq           
                                                           
.size target, .-target
