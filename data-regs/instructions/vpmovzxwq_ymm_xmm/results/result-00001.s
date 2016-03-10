  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm10, %xmm0              #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  vpmovzxwd %xmm0, %ymm6               #  3     0xa   5      OPC=vpmovzxwd_ymm_xmm  
  vmovaps %ymm6, %ymm1                 #  4     0xf   4      OPC=vmovaps_ymm_ymm    
  retq                                 #  5     0x13  1      OPC=retq               
                                                                                    
.size target, .-target
