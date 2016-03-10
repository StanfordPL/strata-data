  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movdqa %xmm2, %xmm1               #  1     0     4      OPC=movdqa_xmm_xmm          
  vpmovzxdq %xmm2, %xmm11           #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm       
  vpunpckhdq %xmm2, %xmm11, %xmm13  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm13, %xmm1               #  4     0xd   5      OPC=movsd_xmm_xmm           
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target
