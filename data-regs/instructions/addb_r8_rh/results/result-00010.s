  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  addb %bl, %ah      #  1     0    2      OPC=addb_rh_r8     
  movsbl %ah, %edi   #  2     0x2  3      OPC=movsbl_r32_rh  
  movsbl %dil, %eax  #  3     0x5  4      OPC=movsbl_r32_r8  
  movw %ax, %bx      #  4     0x9  3      OPC=movw_r16_r16   
  retq               #  5     0xc  1      OPC=retq           
                                                             
.size target, .-target
