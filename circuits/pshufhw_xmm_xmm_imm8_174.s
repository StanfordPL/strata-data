  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movshdup %xmm2, %xmm1               #  1     0     4      OPC=movshdup_xmm_xmm  
  callq .move_byte_9_of_ymm1_to_r9b   #  2     0x4   5      OPC=callq_label       
  callq .move_byte_8_of_ymm1_to_r8b   #  3     0x9   5      OPC=callq_label       
  callq .move_r8b_to_byte_14_of_ymm1  #  4     0xe   5      OPC=callq_label       
  callq .move_r9b_to_byte_6_of_ymm1   #  5     0x13  5      OPC=callq_label       
  movsd %xmm2, %xmm1                  #  6     0x18  4      OPC=movsd_xmm_xmm     
  callq .move_r9b_to_byte_15_of_ymm1  #  7     0x1c  5      OPC=callq_label       
  retq                                #  8     0x21  1      OPC=retq              
                                                                                  
.size target, .-target
