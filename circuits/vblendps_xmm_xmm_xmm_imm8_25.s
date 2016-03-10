  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vmaxss %xmm3, %xmm2, %xmm10                   #  1     0     4      OPC=vmaxss_xmm_xmm_xmm      
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label             
  movshdup %xmm10, %xmm5                        #  3     0x9   5      OPC=movshdup_xmm_xmm        
  vrcpss %xmm6, %xmm2, %xmm1                    #  4     0xe   4      OPC=vrcpss_xmm_xmm_xmm      
  vpunpckhdq %ymm10, %ymm1, %ymm6               #  5     0x12  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x17  5      OPC=callq_label             
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
