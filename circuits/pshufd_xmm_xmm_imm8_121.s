  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm9, %xmm7                  #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vxorps %xmm7, %xmm9, %xmm10                     #  3     0x9   4      OPC=vxorps_xmm_xmm_xmm      
  vpbroadcastd %xmm9, %ymm0                       #  4     0xd   5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %ymm0, %ymm7, %ymm6                  #  5     0x12  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovss %xmm11, %xmm6, %xmm11                    #  6     0x16  5      OPC=vmovss_xmm_xmm_xmm      
  callq .move_64_128_xmm10_xmm11_xmm1             #  7     0x1b  5      OPC=callq_label             
  retq                                            #  8     0x20  1      OPC=retq                    
                                                                                                    
.size target, .-target
