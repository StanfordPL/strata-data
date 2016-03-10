  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                 
.target:                        #        0     0      OPC=<label>            
  vpxor %xmm13, %xmm13, %xmm12  #  1     0     5      OPC=vpxor_xmm_xmm_xmm  
  vpmovzxdq %xmm12, %ymm13      #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm  
  pmovzxwd %xmm13, %xmm1        #  3     0xa   6      OPC=pmovzxwd_xmm_xmm   
  retq                          #  4     0x10  1      OPC=retq               
                                                                             
.size target, .-target
