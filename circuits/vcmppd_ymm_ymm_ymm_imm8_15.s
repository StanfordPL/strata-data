  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vzeroall                                        #  1     0     3      OPC=vzeroall              
  vdivps %ymm5, %ymm6, %ymm0                      #  2     0x3   4      OPC=vdivps_ymm_ymm_ymm    
  vpmovsxdq %xmm0, %ymm1                          #  3     0x7   5      OPC=vpmovsxdq_ymm_xmm     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xc   5      OPC=callq_label           
  vpbroadcastw %xmm11, %ymm8                      #  5     0x11  5      OPC=vpbroadcastw_ymm_xmm  
  vbroadcastss %xmm11, %xmm9                      #  6     0x16  5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1              #  7     0x1b  5      OPC=callq_label           
  retq                                            #  8     0x20  1      OPC=retq                  
                                                                                                  
.size target, .-target
