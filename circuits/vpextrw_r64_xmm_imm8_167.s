  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  movshdup %xmm1, %xmm1               #  1     0     4      OPC=movshdup_xmm_xmm  
  callq .clear_cf                     #  2     0x4   5      OPC=callq_label       
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label       
  callq .read_cf_into_rbx             #  4     0xe   5      OPC=callq_label       
  callq .move_byte_15_of_ymm1_to_r9b  #  5     0x13  5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx      #  6     0x18  5      OPC=callq_label       
  retq                                #  7     0x1d  1      OPC=retq              
                                                                                  
.size target, .-target
