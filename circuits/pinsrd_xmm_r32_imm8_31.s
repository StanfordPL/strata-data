  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label   
  callq .move_032_016_ebx_r8w_r9w               #  2     0x5   5      OPC=callq_label   
  movd %ebx, %xmm7                              #  3     0xa   4      OPC=movd_xmm_r32  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label   
  callq .move_r9b_to_byte_14_of_ymm1            #  5     0x13  5      OPC=callq_label   
  callq .move_r8b_to_byte_12_of_ymm1            #  6     0x18  5      OPC=callq_label   
  retq                                          #  7     0x1d  1      OPC=retq          
                                                                                        
.size target, .-target
