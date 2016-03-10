  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movzbw %ah, %ax  #  1     0    4      OPC=movzbw_r16_rh  
  cbtw             #  2     0x4  2      OPC=cbtw           
  movb %al, %ah    #  3     0x6  2      OPC=movb_rh_r8     
  notw %ax         #  4     0x8  3      OPC=notw_r16       
  retq             #  5     0xb  1      OPC=retq           
                                                           
.size target, .-target
