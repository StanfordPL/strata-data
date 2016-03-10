  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label           
  vbroadcastsd %xmm6, %ymm5                       #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm  
  vaddpd %xmm2, %xmm6, %xmm1                      #  4     0xf   4      OPC=vaddpd_xmm_xmm_xmm    
  movapd %xmm11, %xmm6                            #  5     0x13  5      OPC=movapd_xmm_xmm        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  6     0x18  5      OPC=callq_label           
  movss %xmm10, %xmm1                             #  7     0x1d  5      OPC=movss_xmm_xmm         
  retq                                            #  8     0x22  1      OPC=retq                  
                                                                                                  
.size target, .-target
