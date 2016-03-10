  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %xmm1                 #  1     0     5      OPC=vpbroadcastd_xmm_xmm     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label              
  callq .move_r8b_to_byte_9_of_ymm1         #  3     0xa   5      OPC=callq_label              
  callq .move_r8b_to_byte_10_of_ymm1        #  4     0xf   5      OPC=callq_label              
  callq .move_r9b_to_byte_14_of_ymm1        #  5     0x14  5      OPC=callq_label              
  callq .move_r9b_to_byte_13_of_ymm1        #  6     0x19  5      OPC=callq_label              
  callq .move_r8b_to_byte_11_of_ymm1        #  7     0x1e  5      OPC=callq_label              
  callq .move_r9b_to_byte_15_of_ymm1        #  8     0x23  5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm1, %xmm1           #  9     0x28  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                      #  10    0x2c  1      OPC=retq                     
                                                                                               
.size target, .-target
