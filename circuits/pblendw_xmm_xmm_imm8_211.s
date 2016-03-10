  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_byte_11_of_ymm1_to_r9b              #  1     0     5      OPC=callq_label           
  vpmovzxdq %xmm1, %ymm4                          #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label           
  vmovhlps %xmm4, %xmm4, %xmm9                    #  4     0xf   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_byte_10_of_ymm1_to_r8b              #  5     0x13  5      OPC=callq_label           
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label           
  callq .move_r9b_to_byte_11_of_ymm1              #  7     0x1d  5      OPC=callq_label           
  callq .move_r8b_to_byte_10_of_ymm1              #  8     0x22  5      OPC=callq_label           
  retq                                            #  9     0x27  1      OPC=retq                  
                                                                                                  
.size target, .-target
