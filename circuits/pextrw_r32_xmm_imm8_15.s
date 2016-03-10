  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_byte_15_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label           
  callq .move_r8b_to_byte_1_of_ymm1   #  2     0x5   5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm2           #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_064_xmm2_r8_r9      #  4     0xf   5      OPC=callq_label           
  callq .move_byte_14_of_ymm1_to_r9b  #  5     0x14  5      OPC=callq_label           
  movzwl %r9w, %ebx                   #  6     0x19  4      OPC=movzwl_r32_r16        
  retq                                #  7     0x1d  1      OPC=retq                  
                                                                                      
.size target, .-target
