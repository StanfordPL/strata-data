  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovaps %xmm2, %xmm1                #  1     0     4      OPC=vmovaps_xmm_xmm  
  callq .move_byte_18_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label      
  xaddb %bl, %r9b                     #  3     0x9   4      OPC=xaddb_r8_r8      
  callq .move_r9b_to_byte_14_of_ymm1  #  4     0xd   5      OPC=callq_label      
  retq                                #  5     0x12  1      OPC=retq             
                                                                                 
.size target, .-target
