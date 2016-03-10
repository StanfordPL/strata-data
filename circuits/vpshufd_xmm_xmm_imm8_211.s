  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label            
  popcntw %r10w, %r11w                            #  2     0x5   6      OPC=popcntw_r16_r16        
  vzeroall                                        #  3     0xb   3      OPC=vzeroall               
  callq .move_064_128_r10_r11_xmm3                #  4     0xe   5      OPC=callq_label            
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  5     0x13  5      OPC=callq_label            
  vaddpd %ymm9, %ymm1, %ymm10                     #  6     0x18  5      OPC=vaddpd_ymm_ymm_ymm     
  vunpcklps %xmm11, %xmm8, %xmm9                  #  7     0x1d  5      OPC=vunpcklps_xmm_xmm_xmm  
  vpmovsxdq %xmm11, %xmm8                         #  8     0x22  5      OPC=vpmovsxdq_xmm_xmm      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  9     0x27  5      OPC=callq_label            
  retq                                            #  10    0x2c  1      OPC=retq                   
                                                                                                   
.size target, .-target
