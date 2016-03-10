  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm11, %xmm11                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm   
  vmovsldup %xmm1, %xmm0                          #  3     0xa   4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %ymm11, %ymm0, %ymm13                 #  4     0xe   5      OPC=vunpckhps_ymm_ymm_ymm  
  movlhps %xmm13, %xmm1                           #  5     0x13  4      OPC=movlhps_xmm_xmm        
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
