  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label             
  callq .move_064_128_r8_r9_xmm1                  #  2     0x5   5      OPC=callq_label             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label             
  vpbroadcastq %xmm2, %ymm7                       #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm    
  movups %xmm11, %xmm14                           #  5     0x14  4      OPC=movups_xmm_xmm          
  vpunpckldq %xmm2, %xmm14, %xmm1                 #  6     0x18  4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckldq %xmm7, %xmm1                          #  7     0x1c  4      OPC=punpckldq_xmm_xmm       
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
