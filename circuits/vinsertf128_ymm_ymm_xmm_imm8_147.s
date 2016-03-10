  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpmovzxdq %xmm3, %ymm13               #  1     0     5      OPC=vpmovzxdq_ymm_xmm     
  vmovups %xmm3, %xmm11                 #  2     0x5   4      OPC=vmovups_xmm_xmm       
  vpbroadcastw %xmm13, %xmm10           #  3     0x9   5      OPC=vpbroadcastw_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label           
  movaps %xmm2, %xmm1                   #  5     0x13  3      OPC=movaps_xmm_xmm        
  retq                                  #  6     0x16  1      OPC=retq                  
                                                                                        
.size target, .-target
