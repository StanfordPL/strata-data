  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %xmm4                #  1     0     5      OPC=vpmovzxbq_xmm_xmm  
  vpmovsxwd %xmm4, %xmm3                #  2     0x5   5      OPC=vpmovsxwd_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  3     0xa   5      OPC=callq_label        
  movupd %xmm13, %xmm1                  #  4     0xf   5      OPC=movupd_xmm_xmm     
  retq                                  #  5     0x14  1      OPC=retq               
                                                                                     
.size target, .-target
