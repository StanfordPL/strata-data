  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %xmm3             #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label           
  punpckhqdq %xmm3, %xmm13              #  3     0xa   5      OPC=punpckhqdq_xmm_xmm    
  vpbroadcastq %xmm13, %ymm1            #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm  
  punpcklqdq %xmm12, %xmm1              #  5     0x14  5      OPC=punpcklqdq_xmm_xmm    
  retq                                  #  6     0x19  1      OPC=retq                  
                                                                                        
.size target, .-target
