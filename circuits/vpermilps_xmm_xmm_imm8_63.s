  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label             
  vzeroall                        #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r8_r9_xmm2  #  3     0x8   5      OPC=callq_label             
  movshdup %xmm2, %xmm1           #  4     0xd   4      OPC=movshdup_xmm_xmm        
  movhlps %xmm1, %xmm7            #  5     0x11  3      OPC=movhlps_xmm_xmm         
  vpunpckldq %ymm2, %ymm7, %ymm0  #  6     0x14  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckldq %xmm0, %xmm7, %xmm1  #  7     0x18  4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                            #  8     0x1c  1      OPC=retq                    
                                                                                    
.size target, .-target
