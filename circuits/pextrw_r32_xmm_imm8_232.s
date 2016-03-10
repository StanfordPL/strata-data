  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm2                     #  1     0     5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label           
  vpbroadcastq %xmm4, %ymm1                     #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13           #  4     0xf   5      OPC=callq_label           
  vpmovzxwq %xmm12, %xmm6                       #  5     0x14  5      OPC=vpmovzxwq_xmm_xmm     
  movq %xmm6, %rbx                              #  6     0x19  5      OPC=movq_r64_xmm          
  retq                                          #  7     0x1e  1      OPC=retq                  
                                                                                                
.size target, .-target
