  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovdqu %xmm11, %xmm2                #  2     0x5   5      OPC=vmovdqu_xmm_xmm        
  vbroadcastss %xmm2, %xmm1            #  3     0xa   5      OPC=vbroadcastss_xmm_xmm   
  vunpcklps %ymm1, %ymm2, %ymm3        #  4     0xf   4      OPC=vunpcklps_ymm_ymm_ymm  
  punpckldq %xmm10, %xmm1              #  5     0x13  5      OPC=punpckldq_xmm_xmm      
  vunpckhpd %ymm1, %ymm3, %ymm0        #  6     0x18  4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovups %ymm0, %ymm1                 #  7     0x1c  4      OPC=vmovups_ymm_ymm        
  retq                                 #  8     0x20  1      OPC=retq                   
                                                                                        
.size target, .-target
