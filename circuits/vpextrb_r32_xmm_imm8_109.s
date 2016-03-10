  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  callq .move_byte_13_of_ymm1_to_r9b  #  1     0    5      OPC=callq_label   
  xorl %ebx, %ebx                     #  2     0x5  2      OPC=xorl_r32_r32  
  adcb %bh, %bh                       #  3     0x7  2      OPC=adcb_rh_rh    
  xaddb %bl, %r9b                     #  4     0x9  4      OPC=xaddb_r8_r8   
  retq                                #  5     0xd  1      OPC=retq          
                                                                             
.size target, .-target
