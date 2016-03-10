  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  callq .move_128_256_xmm8_xmm9_ymm3              #  2     0x5   5      OPC=callq_label          
  vandnpd %xmm10, %xmm2, %xmm1                    #  3     0xa   5      OPC=vandnpd_xmm_xmm_xmm  
  movsd %xmm9, %xmm8                              #  4     0xf   5      OPC=movsd_xmm_xmm        
  vpmovzxdq %xmm3, %ymm11                         #  5     0x14  5      OPC=vpmovzxdq_ymm_xmm    
  callq .move_128_064_xmm3_r8_r9                  #  6     0x19  5      OPC=callq_label          
  callq .move_r9b_to_byte_16_of_ymm1              #  7     0x1e  5      OPC=callq_label          
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x23  5      OPC=callq_label          
  retq                                            #  9     0x28  1      OPC=retq                 
                                                                                                 
.size target, .-target
