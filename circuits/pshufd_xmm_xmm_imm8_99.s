  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm10, %xmm9                      #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  movss %xmm11, %xmm9                             #  3     0xa   5      OPC=movss_xmm_xmm           
  vandpd %xmm2, %xmm2, %xmm13                     #  4     0xf   4      OPC=vandpd_xmm_xmm_xmm      
  vpunpckldq %ymm13, %ymm9, %ymm3                 #  5     0x13  5      OPC=vpunpckldq_ymm_ymm_ymm  
  movaps %xmm3, %xmm1                             #  6     0x18  3      OPC=movaps_xmm_xmm          
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
