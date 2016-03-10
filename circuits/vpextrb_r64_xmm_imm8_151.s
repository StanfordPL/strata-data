  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  xorq %r8, %r8                      #  1     0     3      OPC=xorq_r64_r64  
  callq .move_byte_7_of_ymm1_to_r8b  #  2     0x3   5      OPC=callq_label   
  callq .read_of_into_rbx            #  3     0x8   5      OPC=callq_label   
  xaddb %r8b, %bl                    #  4     0xd   4      OPC=xaddb_r8_r8   
  retq                               #  5     0x11  1      OPC=retq          
                                                                             
.size target, .-target
