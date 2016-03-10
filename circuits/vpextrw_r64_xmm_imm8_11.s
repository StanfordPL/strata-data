  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  xorq %r8, %r8                      #  1     0     3      OPC=xorq_r64_r64  
  callq .read_cf_into_rbx            #  2     0x3   5      OPC=callq_label   
  callq .move_byte_6_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label   
  callq .move_byte_7_of_ymm1_to_r9b  #  4     0xd   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx     #  5     0x12  5      OPC=callq_label   
  retq                               #  6     0x17  1      OPC=retq          
                                                                             
.size target, .-target
