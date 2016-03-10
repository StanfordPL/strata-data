  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  xorl %r9d, %r9d                     #  1     0     3      OPC=xorl_r32_r32  
  callq .read_sf_into_rbx             #  2     0x3   5      OPC=callq_label   
  callq .move_byte_10_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label   
  addb %r9b, %bl                      #  4     0xd   3      OPC=addb_r8_r8    
  xorb %bh, %bh                       #  5     0x10  2      OPC=xorb_rh_rh    
  retq                                #  6     0x12  1      OPC=retq          
                                                                              
.size target, .-target
