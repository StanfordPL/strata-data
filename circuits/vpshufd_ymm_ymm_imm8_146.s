  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vorps %xmm4, %xmm5, %xmm15                    #  2     0x5   4      OPC=vorps_xmm_xmm_xmm        
  vpunpckhqdq %ymm15, %ymm2, %ymm3              #  3     0x9   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklps %ymm3, %ymm2, %ymm9                 #  4     0xe   4      OPC=vunpcklps_ymm_ymm_ymm    
  vmovdqu %ymm9, %ymm12                         #  5     0x12  5      OPC=vmovdqu_ymm_ymm          
  vpunpckhdq %ymm12, %ymm2, %ymm14              #  6     0x17  5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpcklps %ymm12, %ymm14, %ymm1               #  7     0x1c  5      OPC=vunpcklps_ymm_ymm_ymm    
  retq                                          #  8     0x21  1      OPC=retq                     
                                                                                                   
.size target, .-target
