  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovsldup %xmm2, %xmm14                         #  2     0x5   4      OPC=vmovsldup_xmm_xmm       
  vmovss %xmm2, %xmm2, %xmm8                      #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm      
  vpunpckhdq %xmm1, %xmm14, %xmm15                #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklpd %ymm8, %ymm15, %ymm10                 #  5     0x11  5      OPC=vunpcklpd_ymm_ymm_ymm   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label             
  retq                                            #  7     0x1b  1      OPC=retq                    
                                                                                                    
.size target, .-target
