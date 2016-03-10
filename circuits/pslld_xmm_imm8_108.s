  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  vpmovzxbq %xmm1, %xmm2                        #  1     0     5      OPC=vpmovzxbq_xmm_xmm       
  vunpcklps %ymm2, %ymm2, %ymm2                 #  2     0x5   4      OPC=vunpcklps_ymm_ymm_ymm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %xmm4, %xmm7, %xmm11               #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovddup %ymm11, %ymm14                       #  5     0x12  5      OPC=vmovddup_ymm_ymm        
  movupd %xmm14, %xmm1                          #  6     0x17  5      OPC=movupd_xmm_xmm          
  retq                                          #  7     0x1c  1      OPC=retq                    
                                                                                                  
.size target, .-target
