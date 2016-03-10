  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  pmovzxdq %xmm1, %xmm11             #  2     0x5   6      OPC=pmovzxdq_xmm_xmm        
  vpmovzxdq %xmm9, %ymm5             #  3     0xb   5      OPC=vpmovzxdq_ymm_xmm       
  vpunpckhdq %xmm11, %xmm5, %xmm5    #  4     0x10  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movdqu %xmm5, %xmm1                #  5     0x15  4      OPC=movdqu_xmm_xmm          
  retq                               #  6     0x19  1      OPC=retq                    
                                                                                       
.size target, .-target
