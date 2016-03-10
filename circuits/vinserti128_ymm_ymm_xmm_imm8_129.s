  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  vbroadcastsd %xmm3, %ymm13        #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  vpmovzxdq %xmm13, %ymm6           #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm     
  callq .move_128_064_xmm2_r12_r13  #  3     0xa   5      OPC=callq_label           
  vpmovzxdq %xmm3, %ymm12           #  4     0xf   5      OPC=vpmovzxdq_ymm_xmm     
  vphaddd %ymm12, %ymm6, %ymm1      #  5     0x14  5      OPC=vphaddd_ymm_ymm_ymm   
  callq .move_064_128_r12_r13_xmm1  #  6     0x19  5      OPC=callq_label           
  retq                              #  7     0x1e  1      OPC=retq                  
                                                                                    
.size target, .-target
