  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  callq .move_byte_7_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label    
  xorl %ebx, %ebx                    #  2     0x5  2      OPC=xorl_r32_r32   
  movsbw %bh, %bx                    #  3     0x7  4      OPC=movsbw_r16_rh  
  addb %r8b, %bl                     #  4     0xb  3      OPC=addb_r8_r8     
  retq                               #  5     0xe  1      OPC=retq           
                                                                             
.size target, .-target
