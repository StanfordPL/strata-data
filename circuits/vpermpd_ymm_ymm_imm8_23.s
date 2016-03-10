  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm6             #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11   #  2     0x5   5      OPC=callq_label           
  callq .move_256_128_ymm2_xmm12_xmm13  #  3     0xa   5      OPC=callq_label           
  vmovsd %xmm11, %xmm6, %xmm11          #  4     0xf   5      OPC=vmovsd_xmm_xmm_xmm    
  vmovhlps %xmm13, %xmm12, %xmm10       #  5     0x14  5      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x19  5      OPC=callq_label           
  retq                                  #  7     0x1e  1      OPC=retq                  
                                                                                        
.size target, .-target
