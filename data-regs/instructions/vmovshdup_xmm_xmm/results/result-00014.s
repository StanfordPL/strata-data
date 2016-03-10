  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm9, %ymm0                       #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  vbroadcastss %xmm11, %ymm5                      #  3     0xa   5      OPC=vbroadcastss_ymm_xmm  
  vmovlhps %xmm5, %xmm0, %xmm1                    #  4     0xf   4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                  
                                                                                                  
.size target, .-target
