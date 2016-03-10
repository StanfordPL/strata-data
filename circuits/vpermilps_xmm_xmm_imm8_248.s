  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label              
  vzeroall                                        #  2     0x5   3      OPC=vzeroall                 
  callq .move_064_128_r8_r9_xmm3                  #  3     0x8   5      OPC=callq_label              
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label              
  vpbroadcastd %xmm11, %xmm6                      #  5     0x12  5      OPC=vpbroadcastd_xmm_xmm     
  vunpcklps %ymm10, %ymm8, %ymm7                  #  6     0x17  5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpcklqdq %xmm6, %xmm7, %xmm1                 #  7     0x1c  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
