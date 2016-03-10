  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movzbw %ah, %di    #  1     0    4      OPC=movzbw_r16_rh  
  xaddb %ah, %bl     #  2     0x4  3      OPC=xaddb_r8_rh    
  movsbl %dil, %ebx  #  3     0x7  4      OPC=movsbl_r32_r8  
  retq               #  4     0xb  1      OPC=retq           
                                                             
.size target, .-target
