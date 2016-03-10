  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vunpckhps %xmm1, %xmm10, %xmm13                 #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %ymm13, %ymm13, %ymm9               #  3     0x9   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  maxps %xmm8, %xmm8                              #  4     0xe   4      OPC=maxps_xmm_xmm            
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x12  5      OPC=callq_label              
  retq                                            #  6     0x17  1      OPC=retq                     
                                                                                                     
.size target, .-target
