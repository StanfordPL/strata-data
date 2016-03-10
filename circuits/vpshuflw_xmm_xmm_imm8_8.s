  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label           
  callq .move_016_008_dx_r8b_r9b            #  2     0x5   5      OPC=callq_label           
  vpbroadcastw %xmm2, %xmm1                 #  3     0xa   5      OPC=vpbroadcastw_xmm_xmm  
  punpckhqdq %xmm2, %xmm1                   #  4     0xf   4      OPC=punpckhqdq_xmm_xmm    
  callq .move_r9b_to_byte_3_of_ymm1         #  5     0x13  5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1         #  6     0x18  5      OPC=callq_label           
  retq                                      #  7     0x1d  1      OPC=retq                  
                                                                                            
.size target, .-target
