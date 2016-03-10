  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movzbw %ah, %di    #  1     0    4      OPC=movzbw_r16_rh  
  movsbl %dil, %ebx  #  2     0x4  4      OPC=movsbl_r32_r8  
  retq               #  3     0x8  1      OPC=retq           
                                                             
.size target, .-target
