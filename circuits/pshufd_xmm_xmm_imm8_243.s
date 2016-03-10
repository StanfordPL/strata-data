  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpbroadcastd %xmm11, %xmm6                      #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckldq %xmm8, %xmm11, %xmm8                 #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovddup %ymm6, %ymm9                           #  4     0xf   4      OPC=vmovddup_ymm_ymm        
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x13  5      OPC=callq_label             
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
