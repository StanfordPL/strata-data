  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vpmovzxdq %xmm2, %xmm1              #  1     0     5      OPC=vpmovzxdq_xmm_xmm     
  callq .move_128_064_xmm1_r8_r9      #  2     0x5   5      OPC=callq_label           
  callq .move_byte_14_of_ymm1_to_r9b  #  3     0xa   5      OPC=callq_label           
  callq .move_r9b_to_byte_17_of_ymm1  #  4     0xf   5      OPC=callq_label           
  callq .move_r8b_to_byte_2_of_ymm1   #  5     0x14  5      OPC=callq_label           
  callq .move_byte_1_of_ymm1_to_r9b   #  6     0x19  5      OPC=callq_label           
  callq .move_r9b_to_byte_3_of_ymm1   #  7     0x1e  5      OPC=callq_label           
  vbroadcastss %xmm1, %xmm1           #  8     0x23  5      OPC=vbroadcastss_xmm_xmm  
  retq                                #  9     0x28  1      OPC=retq                  
                                                                                      
.size target, .-target
