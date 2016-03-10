  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpmovzxwq %xmm11, %xmm14             #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm       
  movaps %xmm11, %xmm1                 #  3     0xa   4      OPC=movaps_xmm_xmm          
  vpunpckhdq %xmm14, %xmm2, %xmm8      #  4     0xe   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm8, %xmm9        #  5     0x13  4      OPC=vunpckhps_xmm_xmm_xmm   
  punpckldq %xmm9, %xmm1               #  6     0x17  5      OPC=punpckldq_xmm_xmm       
  retq                                 #  7     0x1c  1      OPC=retq                    
                                                                                         
.size target, .-target
