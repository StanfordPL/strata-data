  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  movss %xmm9, %xmm1                 #  2     0x5   5      OPC=movss_xmm_xmm           
  vpmovzxdq %xmm2, %xmm9             #  3     0xa   5      OPC=vpmovzxdq_xmm_xmm       
  vpunpckhdq %xmm2, %xmm9, %xmm2     #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm1            #  5     0x13  4      OPC=punpcklqdq_xmm_xmm      
  retq                               #  6     0x17  1      OPC=retq                    
                                                                                       
.size target, .-target
