  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9             #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label              
  vbroadcastss %xmm9, %xmm8                     #  3     0xa   5      OPC=vbroadcastss_xmm_xmm     
  vpunpckhqdq %xmm8, %xmm2, %xmm14              #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpbroadcastq %xmm5, %ymm13                    #  5     0x14  5      OPC=vpbroadcastq_ymm_xmm     
  vmovss %xmm13, %xmm14, %xmm1                  #  6     0x19  5      OPC=vmovss_xmm_xmm_xmm       
  retq                                          #  7     0x1e  1      OPC=retq                     
                                                                                                   
.size target, .-target
