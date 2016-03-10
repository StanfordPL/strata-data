  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  callq .move_128_64_xmm3_xmm12_xmm13           #  2     0x5   5      OPC=callq_label              
  movlhps %xmm4, %xmm6                          #  3     0xa   3      OPC=movlhps_xmm_xmm          
  vpbroadcastq %xmm13, %ymm8                    #  4     0xd   5      OPC=vpbroadcastq_ymm_xmm     
  vbroadcastsd %xmm3, %ymm13                    #  5     0x12  5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %ymm8, %ymm13, %ymm1              #  6     0x17  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1c  5      OPC=callq_label              
  retq                                          #  8     0x21  1      OPC=retq                     
                                                                                                   
.size target, .-target
