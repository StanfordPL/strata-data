  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  movdqu %xmm1, %xmm7                  #  1     0     4      OPC=movdqu_xmm_xmm           
  vpbroadcastd %xmm2, %xmm11           #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm     
  vpmovzxdq %xmm1, %xmm10              #  3     0x9   5      OPC=vpmovzxdq_xmm_xmm        
  vunpckhps %xmm2, %xmm11, %xmm12      #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm    
  vaddsd %xmm1, %xmm12, %xmm2          #  5     0x12  4      OPC=vaddsd_xmm_xmm_xmm       
  punpckhdq %xmm7, %xmm10              #  6     0x16  5      OPC=punpckhdq_xmm_xmm        
  vpunpckhqdq %ymm11, %ymm2, %ymm11    #  7     0x1b  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label              
  retq                                 #  9     0x25  1      OPC=retq                     
                                                                                          
.size target, .-target
