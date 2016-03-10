  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm1_xmm10_xmm11           #  2     0x5   5      OPC=callq_label             
  unpckhps %xmm1, %xmm10                        #  3     0xa   4      OPC=unpckhps_xmm_xmm        
  callq .move_128_256_xmm10_xmm11_ymm3          #  4     0xe   5      OPC=callq_label             
  vbroadcastsd %xmm6, %ymm0                     #  5     0x13  5      OPC=vbroadcastsd_ymm_xmm    
  punpckhqdq %xmm4, %xmm3                       #  6     0x18  4      OPC=punpckhqdq_xmm_xmm      
  vpxor %ymm0, %ymm3, %ymm9                     #  7     0x1c  4      OPC=vpxor_ymm_ymm_ymm       
  vpunpckldq %xmm5, %xmm1, %xmm8                #  8     0x20  4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1             #  9     0x24  5      OPC=callq_label             
  retq                                          #  10    0x29  1      OPC=retq                    
                                                                                                  
.size target, .-target
