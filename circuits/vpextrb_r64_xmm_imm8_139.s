  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  callq .move_byte_11_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label   
  xorw %di, %di                       #  2     0x5   3      OPC=xorw_r16_r16  
  callq .read_sf_into_rbx             #  3     0x8   5      OPC=callq_label   
  xchgb %bl, %r8b                     #  4     0xd   3      OPC=xchgb_r8_r8   
  retq                                #  5     0x10  1      OPC=retq          
                                                                              
.size target, .-target
