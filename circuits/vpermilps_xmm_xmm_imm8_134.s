  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovss %xmm10, %xmm2, %xmm1                     #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm     
  vunpcklps %xmm1, %xmm2, %xmm8                   #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpcklpd %ymm8, %ymm1, %ymm12                  #  4     0xe   5      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_byte_26_of_ymm1_to_r9b              #  5     0x13  5      OPC=callq_label            
  cvtsd2ss %xmm10, %xmm2                          #  6     0x18  5      OPC=cvtsd2ss_xmm_xmm       
  pmovzxbq %xmm2, %xmm13                          #  7     0x1d  6      OPC=pmovzxbq_xmm_xmm       
  callq .move_128_256_xmm12_xmm13_ymm1            #  8     0x23  5      OPC=callq_label            
  callq .move_r9b_to_byte_24_of_ymm1              #  9     0x28  5      OPC=callq_label            
  retq                                            #  10    0x2d  1      OPC=retq                   
                                                                                                   
.size target, .-target
