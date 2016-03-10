  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm8_xmm9            #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm2_xmm12_xmm13           #  2     0x5   5      OPC=callq_label              
  vpbroadcastq %xmm13, %ymm14                   #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm     
  vpbroadcastq %xmm9, %ymm15                    #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x14  5      OPC=callq_label              
  punpcklqdq %xmm4, %xmm2                       #  6     0x19  4      OPC=punpcklqdq_xmm_xmm       
  vpunpckhqdq %ymm2, %ymm14, %ymm1              #  7     0x1d  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movapd %xmm15, %xmm1                          #  8     0x21  5      OPC=movapd_xmm_xmm           
  retq                                          #  9     0x26  1      OPC=retq                     
                                                                                                   
.size target, .-target
