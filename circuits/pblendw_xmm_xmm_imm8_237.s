  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  xorps %xmm1, %xmm8                              #  2     0x5   4      OPC=xorps_xmm_xmm      
  vpmovzxwd %xmm8, %ymm4                          #  3     0x9   5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d        #  4     0xe   5      OPC=callq_label        
  callq .move_byte_9_of_ymm1_to_r9b               #  5     0x13  5      OPC=callq_label        
  vpxor %xmm1, %xmm4, %xmm8                       #  6     0x18  4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1c  5      OPC=callq_label        
  callq .move_r8b_to_byte_8_of_ymm1               #  8     0x21  5      OPC=callq_label        
  callq .move_r9b_to_byte_9_of_ymm1               #  9     0x26  5      OPC=callq_label        
  retq                                            #  10    0x2b  1      OPC=retq               
                                                                                               
.size target, .-target
