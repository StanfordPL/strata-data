  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  vpmovzxwd %xmm2, %xmm11               #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13   #  2     0x5   5      OPC=callq_label        
  vpmovzxwd %xmm13, %xmm13              #  3     0xa   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xf   5      OPC=callq_label        
  movdqu %xmm11, %xmm1                  #  5     0x14  5      OPC=movdqu_xmm_xmm     
  retq                                  #  6     0x19  1      OPC=retq               
                                                                                     
.size target, .-target
