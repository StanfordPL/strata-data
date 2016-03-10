  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vunpckhps %ymm3, %ymm2, %ymm6                   #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpckhps %ymm6, %ymm3, %ymm13                  #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %ymm2, %ymm3, %ymm1                 #  3     0x8   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xc   5      OPC=callq_label              
  vpunpcklqdq %ymm13, %ymm1, %ymm1                #  5     0x11  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpunpcklqdq %xmm13, %xmm2, %xmm8                #  6     0x16  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label              
  retq                                            #  8     0x20  1      OPC=retq                     
                                                                                                     
.size target, .-target
