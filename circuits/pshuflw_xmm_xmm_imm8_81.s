  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vpmovzxwd %xmm2, %xmm4                          #  1     0     5      OPC=vpmovzxwd_xmm_xmm     
  vmovshdup %ymm4, %ymm3                          #  2     0x5   4      OPC=vmovshdup_ymm_ymm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vpbroadcastw %xmm8, %ymm12                      #  4     0xe   5      OPC=vpbroadcastw_ymm_xmm  
  vandnps %xmm12, %xmm4, %xmm5                    #  5     0x13  5      OPC=vandnps_xmm_xmm_xmm   
  vorpd %xmm3, %xmm5, %xmm8                       #  6     0x18  4      OPC=vorpd_xmm_xmm_xmm     
  vpbroadcastw %xmm8, %ymm9                       #  7     0x1c  5      OPC=vpbroadcastw_ymm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x21  5      OPC=callq_label           
  retq                                            #  9     0x26  1      OPC=retq                  
                                                                                                  
.size target, .-target
