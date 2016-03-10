  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP  Bytes  Opcode                
.target:                              #        0    0      OPC=<label>           
  callq .move_byte_13_of_ymm1_to_r9b  #  1     0    5      OPC=callq_label       
  callq .move_r9b_to_byte_2_of_ymm1   #  2     0x5  5      OPC=callq_label       
  unpckhps %xmm2, %xmm1               #  3     0xa  3      OPC=unpckhps_xmm_xmm  
  retq                                #  4     0xd  1      OPC=retq              
                                                                                 
.size target, .-target
