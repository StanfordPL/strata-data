  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm11, %ymm13           #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm  
  movddup %xmm10, %xmm13                #  3     0xa   5      OPC=movddup_xmm_xmm       
  vmovdqa %ymm13, %ymm1                 #  4     0xf   5      OPC=vmovdqa_ymm_ymm       
  retq                                  #  5     0x14  1      OPC=retq                  
                                                                                        
.size target, .-target