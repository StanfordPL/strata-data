  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label             
  callq .move_064_128_r8_r9_xmm3                #  2     0x5   5      OPC=callq_label             
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label             
  vpbroadcastd %xmm7, %ymm9                     #  4     0xf   5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckldq %xmm3, %xmm7, %xmm1                #  5     0x14  4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm9, %xmm1                       #  6     0x18  5      OPC=punpcklqdq_xmm_xmm      
  retq                                          #  7     0x1d  1      OPC=retq                    
                                                                                                  
.size target, .-target
