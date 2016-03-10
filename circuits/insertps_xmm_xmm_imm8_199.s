  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vunpckhps %xmm1, %xmm11, %xmm14      #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckhdq %xmm14, %xmm10, %xmm14    #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movdqa %xmm14, %xmm1                 #  4     0xe   5      OPC=movdqa_xmm_xmm          
  retq                                 #  5     0x13  1      OPC=retq                    
                                                                                         
.size target, .-target
