  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  xorl %r8d, %r8d                     #  1     0     3      OPC=xorl_r32_r32  
  callq .move_byte_13_of_ymm1_to_r8b  #  2     0x3   5      OPC=callq_label   
  callq .read_cf_into_rbx             #  3     0x8   5      OPC=callq_label   
  xaddb %bl, %r8b                     #  4     0xd   4      OPC=xaddb_r8_r8   
  subb %bh, %bh                       #  5     0x11  2      OPC=subb_rh_rh    
  retq                                #  6     0x13  1      OPC=retq          
                                                                              
.size target, .-target
