  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm4, %ymm15                    #  2     0x5   5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm15, %xmm2, %xmm1               #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %ymm1, %ymm15, %ymm3                #  4     0xf   4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpcklps %xmm1, %xmm3, %xmm1                 #  5     0x13  4      OPC=vunpcklps_xmm_xmm_xmm   
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
