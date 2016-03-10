  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label              
  vmovsldup %xmm2, %xmm14                         #  3     0xa   4      OPC=vmovsldup_xmm_xmm        
  vpaddq %xmm7, %xmm4, %xmm1                      #  4     0xe   4      OPC=vpaddq_xmm_xmm_xmm       
  vpunpcklqdq %xmm8, %xmm8, %xmm4                 #  5     0x12  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpckhps %ymm1, %ymm14, %ymm6                  #  6     0x17  4      OPC=vunpckhps_ymm_ymm_ymm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1    #  7     0x1b  5      OPC=callq_label              
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
