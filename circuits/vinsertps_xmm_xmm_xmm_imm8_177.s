  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vxorpd %xmm4, %xmm3, %xmm3                    #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm      
  vmovss %xmm3, %xmm2, %xmm6                    #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm      
  vpunpckhdq %xmm3, %xmm2, %xmm7                #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklpd %ymm7, %ymm6, %ymm1                 #  5     0x11  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                                          #  6     0x15  1      OPC=retq                    
                                                                                                  
.size target, .-target
