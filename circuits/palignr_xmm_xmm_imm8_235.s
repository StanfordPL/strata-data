  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  pmovzxwq %xmm2, %xmm2                #  1     0     5      OPC=pmovzxwq_xmm_xmm    
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label         
  vpmovzxdq %xmm13, %xmm3              #  3     0xa   5      OPC=vpmovzxdq_xmm_xmm   
  cvttpd2dq %xmm13, %xmm1              #  4     0xf   5      OPC=cvttpd2dq_xmm_xmm   
  punpckhqdq %xmm3, %xmm1              #  5     0x14  4      OPC=punpckhqdq_xmm_xmm  
  retq                                 #  6     0x18  1      OPC=retq                
                                                                                     
.size target, .-target
