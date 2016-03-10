  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm2, %xmm12            #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  vmovups %xmm9, %xmm8                  #  3     0xa   5      OPC=vmovups_xmm_xmm       
  callq .move_64_128_xmm8_xmm9_xmm2     #  4     0xf   5      OPC=callq_label           
  vmovdqa %ymm2, %ymm13                 #  5     0x14  4      OPC=vmovdqa_ymm_ymm       
  callq .move_128_256_xmm12_xmm13_ymm1  #  6     0x18  5      OPC=callq_label           
  retq                                  #  7     0x1d  1      OPC=retq                  
                                                                                        
.size target, .-target
