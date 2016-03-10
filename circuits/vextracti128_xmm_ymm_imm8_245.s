  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm11               #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovups %ymm11, %ymm4                 #  3     0xa   5      OPC=vmovups_ymm_ymm    
  vmovups %xmm4, %xmm1                  #  4     0xf   4      OPC=vmovups_xmm_xmm    
  retq                                  #  5     0x13  1      OPC=retq               
                                                                                     
.size target, .-target
