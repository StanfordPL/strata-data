  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label           
  xorw %r11w, %r11w                               #  2     0x5   4      OPC=xorw_r16_r16          
  callq .move_064_128_r10_r11_xmm1                #  3     0x9   5      OPC=callq_label           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xe   5      OPC=callq_label           
  vbroadcastss %xmm9, %xmm1                       #  5     0x13  5      OPC=vbroadcastss_xmm_xmm  
  vpbroadcastd %xmm11, %ymm10                     #  6     0x18  5      OPC=vpbroadcastd_ymm_xmm  
  unpckhpd %xmm10, %xmm1                          #  7     0x1d  5      OPC=unpckhpd_xmm_xmm      
  retq                                            #  8     0x22  1      OPC=retq                  
                                                                                                  
.size target, .-target
