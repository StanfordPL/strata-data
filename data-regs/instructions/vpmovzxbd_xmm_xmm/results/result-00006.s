  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                   
.target:                                #        0    0      OPC=<label>              
  vpmovzxbq %xmm2, %ymm3                #  1     0    5      OPC=vpmovzxbq_ymm_xmm    
  callq .move_256_128_ymm3_xmm10_xmm11  #  2     0x5  5      OPC=callq_label          
  vhsubps %xmm11, %xmm10, %xmm1         #  3     0xa  5      OPC=vhsubps_xmm_xmm_xmm  
  retq                                  #  4     0xf  1      OPC=retq                 
                                                                                      
.size target, .-target
