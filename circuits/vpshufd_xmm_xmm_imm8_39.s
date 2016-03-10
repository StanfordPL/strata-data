  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vmovss %xmm7, %xmm2, %xmm10                   #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm       
  vmovsldup %xmm2, %xmm3                        #  3     0x9   4      OPC=vmovsldup_xmm_xmm        
  vpunpckhdq %ymm3, %ymm3, %ymm8                #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpcklps %ymm3, %ymm8, %ymm3                 #  5     0x11  4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpcklqdq %ymm3, %ymm10, %ymm1              #  6     0x15  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                          #  7     0x19  1      OPC=retq                     
                                                                                                   
.size target, .-target
