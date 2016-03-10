  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vmovhlps %xmm2, %xmm2, %xmm6          #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vpbroadcastq %xmm1, %xmm3             #  2     0x4   5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vmovss %xmm1, %xmm6, %xmm10           #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x12  5      OPC=callq_label           
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
