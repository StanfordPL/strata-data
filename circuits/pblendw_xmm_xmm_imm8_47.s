  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  movhlps %xmm2, %xmm1                #  1     0     3      OPC=movhlps_xmm_xmm  
  callq .move_byte_3_of_ymm1_to_r9b   #  2     0x3   5      OPC=callq_label      
  callq .move_byte_2_of_ymm1_to_r8b   #  3     0x8   5      OPC=callq_label      
  callq .move_r8b_to_byte_10_of_ymm1  #  4     0xd   5      OPC=callq_label      
  movsd %xmm2, %xmm1                  #  5     0x12  4      OPC=movsd_xmm_xmm    
  callq .move_r9b_to_byte_11_of_ymm1  #  6     0x16  5      OPC=callq_label      
  retq                                #  7     0x1b  1      OPC=retq             
                                                                                 
.size target, .-target
