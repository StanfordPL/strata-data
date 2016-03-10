  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  callq .move_128_64_xmm1_xmm10_xmm11           #  2     0x5   5      OPC=callq_label             
  vpunpckhdq %xmm4, %xmm5, %xmm0                #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckldq %xmm6, %xmm10                       #  4     0xe   5      OPC=punpckldq_xmm_xmm       
  vunpckhps %xmm10, %xmm0, %xmm4                #  5     0x13  5      OPC=vunpckhps_xmm_xmm_xmm   
  movdqa %xmm4, %xmm1                           #  6     0x18  4      OPC=movdqa_xmm_xmm          
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
