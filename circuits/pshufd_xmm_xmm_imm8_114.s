  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpbroadcastq %xmm2, %ymm8            #  1     0     5      OPC=vpbroadcastq_ymm_xmm    
  vmovdqa %xmm2, %xmm4                 #  2     0x5   4      OPC=vmovdqa_xmm_xmm         
  vpaddq %xmm8, %xmm8, %xmm0           #  3     0x9   5      OPC=vpaddq_xmm_xmm_xmm      
  vpunpckhdq %ymm8, %ymm4, %ymm14      #  4     0xe   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  movdqa %xmm14, %xmm12                #  5     0x13  5      OPC=movdqa_xmm_xmm          
  vunpckhpd %xmm0, %xmm14, %xmm13      #  6     0x18  4      OPC=vunpckhpd_xmm_xmm_xmm   
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1c  5      OPC=callq_label             
  retq                                 #  8     0x21  1      OPC=retq                    
                                                                                         
.size target, .-target
