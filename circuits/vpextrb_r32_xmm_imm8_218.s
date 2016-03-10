  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  xorw %r15w, %r15w                   #  1     0     4      OPC=xorw_r16_r16  
  callq .read_cf_into_rbx             #  2     0x4   5      OPC=callq_label   
  callq .move_byte_10_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label   
  xchgb %r8b, %bl                     #  4     0xe   3      OPC=xchgb_r8_r8   
  retq                                #  5     0x11  1      OPC=retq          
                                                                              
.size target, .-target
