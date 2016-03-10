  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  vpmovzxdq %xmm2, %xmm8               #  1     0     5      OPC=vpmovzxdq_xmm_xmm         
  vpmovzxdq %xmm2, %ymm2               #  2     0x5   5      OPC=vpmovzxdq_ymm_xmm         
  callq .move_128_64_xmm3_xmm10_xmm11  #  3     0xa   5      OPC=callq_label               
  pmovzxbq %xmm1, %xmm12               #  4     0xf   6      OPC=pmovzxbq_xmm_xmm          
  vfnmsub213ps %xmm8, %xmm2, %xmm12    #  5     0x15  5      OPC=vfnmsub213ps_xmm_xmm_xmm  
  vfnmsub132ss %xmm10, %xmm12, %xmm1   #  6     0x1a  5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  retq                                 #  7     0x1f  1      OPC=retq                      
                                                                                           
.size target, .-target
