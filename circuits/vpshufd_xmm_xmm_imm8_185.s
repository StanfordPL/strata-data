  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label             
  vzeroall                        #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r8_r9_xmm3  #  3     0x8   5      OPC=callq_label             
  punpckldq %xmm3, %xmm2          #  4     0xd   4      OPC=punpckldq_xmm_xmm       
  vunpckhps %ymm3, %ymm2, %ymm6   #  5     0x11  4      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm6, %ymm6, %ymm2  #  6     0x15  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm2, %ymm6, %ymm1  #  7     0x19  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                            #  8     0x1d  1      OPC=retq                    
                                                                                    
.size target, .-target
