  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vunpckhps %xmm2, %xmm11, %xmm1                  #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm    
  unpcklps %xmm1, %xmm2                           #  3     0x9   3      OPC=unpcklps_xmm_xmm         
  callq .move_128_64_xmm2_xmm10_xmm11             #  4     0xc   5      OPC=callq_label              
  vmaxps %xmm11, %xmm11, %xmm7                    #  5     0x11  5      OPC=vmaxps_xmm_xmm_xmm       
  vpunpcklqdq %ymm7, %ymm7, %ymm1                 #  6     0x16  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                                            #  7     0x1a  1      OPC=retq                     
                                                                                                     
.size target, .-target
