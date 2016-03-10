  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label              
  callq .move_032_064_r8d_r9d_rbx    #  2     0x5   5      OPC=callq_label              
  callq .move_byte_2_of_rbx_to_r8b   #  3     0xa   5      OPC=callq_label              
  vpbroadcastw %xmm2, %ymm3          #  4     0xf   5      OPC=vpbroadcastw_ymm_xmm     
  vpunpckhqdq %xmm2, %xmm3, %xmm1    #  5     0x14  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_r8b_to_byte_4_of_ymm1  #  6     0x18  5      OPC=callq_label              
  callq .move_byte_3_of_rbx_to_r8b   #  7     0x1d  5      OPC=callq_label              
  callq .move_r8b_to_byte_5_of_ymm1  #  8     0x22  5      OPC=callq_label              
  retq                               #  9     0x27  1      OPC=retq                     
                                                                                        
.size target, .-target
