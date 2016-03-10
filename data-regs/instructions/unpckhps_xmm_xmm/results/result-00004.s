  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm10, %ymm14                     #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13             #  3     0xa   5      OPC=callq_label           
  vxorps %xmm14, %xmm13, %xmm7                    #  4     0xf   5      OPC=vxorps_xmm_xmm_xmm    
  vpmovzxdq %xmm7, %xmm5                          #  5     0x14  5      OPC=vpmovzxdq_xmm_xmm     
  vxorps %xmm2, %xmm5, %xmm3                      #  6     0x19  4      OPC=vxorps_xmm_xmm_xmm    
  vpxor %xmm5, %xmm14, %xmm5                      #  7     0x1d  4      OPC=vpxor_xmm_xmm_xmm     
  unpcklpd %xmm5, %xmm1                           #  8     0x21  4      OPC=unpcklpd_xmm_xmm      
  punpckhqdq %xmm3, %xmm1                         #  9     0x25  4      OPC=punpckhqdq_xmm_xmm    
  retq                                            #  10    0x29  1      OPC=retq                  
                                                                                                  
.size target, .-target
