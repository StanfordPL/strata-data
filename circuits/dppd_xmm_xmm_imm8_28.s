  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vpmovzxwd %xmm1, %xmm3              #  1     0     5      OPC=vpmovzxwd_xmm_xmm      
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x5   5      OPC=callq_label            
  vaddsubpd %xmm3, %xmm8, %xmm8       #  3     0xa   4      OPC=vaddsubpd_xmm_xmm_xmm  
  pmovzxbd %xmm8, %xmm1               #  4     0xe   6      OPC=pmovzxbd_xmm_xmm       
  retq                                #  5     0x14  1      OPC=retq                   
                                                                                       
.size target, .-target
