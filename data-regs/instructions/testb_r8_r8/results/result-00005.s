  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movsbl %cl, %r11d  #  1     0    4      OPC=movsbl_r32_r8  
  movsbl %bl, %r9d   #  2     0x4  4      OPC=movsbl_r32_r8  
  testl %r9d, %r11d  #  3     0x8  3      OPC=testl_r32_r32  
  retq               #  4     0xb  1      OPC=retq           
                                                             
.size target, .-target
