  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vsubss %xmm2, %xmm2, %xmm0        #  1     0     4      OPC=vsubss_xmm_xmm_xmm       
  vpmovzxdq %xmm2, %xmm6            #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm        
  movupd %xmm0, %xmm0               #  3     0x9   4      OPC=movupd_xmm_xmm           
  vpbroadcastd %xmm6, %xmm11        #  4     0xd   5      OPC=vpbroadcastd_xmm_xmm     
  vpunpckhdq %ymm0, %ymm6, %ymm1    #  5     0x12  4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpcklqdq %ymm11, %ymm1, %ymm1  #  6     0x16  5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  7     0x1b  1      OPC=retq                     
                                                                                       
.size target, .-target
