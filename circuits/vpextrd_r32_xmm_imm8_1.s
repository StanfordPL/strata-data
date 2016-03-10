  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_byte_10_of_ymm1_to_r9b            #  1     0     5      OPC=callq_label   
  callq .move_r9b_to_byte_12_of_ymm1            #  2     0x5   5      OPC=callq_label   
  callq .move_r9b_to_byte_2_of_ymm1             #  3     0xa   5      OPC=callq_label   
  orps %xmm1, %xmm1                             #  4     0xf   3      OPC=orps_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  5     0x12  5      OPC=callq_label   
  movd %xmm5, %ebx                              #  6     0x17  4      OPC=movd_r32_xmm  
  retq                                          #  7     0x1b  1      OPC=retq          
                                                                                        
.size target, .-target
