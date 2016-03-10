  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9    #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label              
  vpbroadcastd %xmm13, %ymm7           #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm     
  unpcklps %xmm8, %xmm9                #  4     0xf   4      OPC=unpcklps_xmm_xmm         
  movapd %xmm7, %xmm8                  #  5     0x13  5      OPC=movapd_xmm_xmm           
  vorps %xmm9, %xmm12, %xmm12          #  6     0x18  5      OPC=vorps_xmm_xmm_xmm        
  vpunpckhqdq %xmm12, %xmm8, %xmm1     #  7     0x1d  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                 #  8     0x22  1      OPC=retq                     
                                                                                          
.size target, .-target
