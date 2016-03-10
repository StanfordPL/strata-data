  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  callq .move_64_128_xmm10_xmm11_xmm1             #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %xmm9, %xmm1, %xmm3                 #  3     0xa   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovsldup %ymm3, %ymm13                         #  4     0xf   4      OPC=vmovsldup_ymm_ymm        
  unpckhps %xmm3, %xmm1                           #  5     0x13  3      OPC=unpckhps_xmm_xmm         
  vunpcklps %xmm13, %xmm9, %xmm6                  #  6     0x16  5      OPC=vunpcklps_xmm_xmm_xmm    
  movlhps %xmm6, %xmm1                            #  7     0x1b  3      OPC=movlhps_xmm_xmm          
  retq                                            #  8     0x1e  1      OPC=retq                     
                                                                                                     
.size target, .-target
