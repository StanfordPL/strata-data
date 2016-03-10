  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  movsldup %xmm10, %xmm1                          #  2     0x5   5      OPC=movsldup_xmm_xmm      
  movss %xmm2, %xmm2                              #  3     0xa   4      OPC=movss_xmm_xmm         
  vpbroadcastd %xmm2, %ymm0                       #  4     0xe   5      OPC=vpbroadcastd_ymm_xmm  
  punpcklqdq %xmm0, %xmm1                         #  5     0x13  4      OPC=punpcklqdq_xmm_xmm    
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target
