  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %ymm11                    #  1     0     5      OPC=vpbroadcastd_ymm_xmm   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm6, %xmm7, %xmm2                 #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovdqa %ymm2, %ymm10                         #  4     0xe   4      OPC=vmovdqa_ymm_ymm        
  callq .move_64_128_xmm10_xmm11_xmm2           #  5     0x12  5      OPC=callq_label            
  movdqu %xmm2, %xmm1                           #  6     0x17  4      OPC=movdqu_xmm_xmm         
  retq                                          #  7     0x1b  1      OPC=retq                   
                                                                                                 
.size target, .-target
