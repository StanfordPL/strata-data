  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %xmm2                #  1     0     5      OPC=vpmovzxdq_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label        
  vpmovzxbd %xmm13, %xmm14              #  3     0xa   5      OPC=vpmovzxbd_xmm_xmm  
  movsldup %xmm14, %xmm1                #  4     0xf   5      OPC=movsldup_xmm_xmm   
  retq                                  #  5     0x14  1      OPC=retq               
                                                                                     
.size target, .-target
