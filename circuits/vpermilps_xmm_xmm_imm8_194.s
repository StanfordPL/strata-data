  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %xmm1                 #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  vunpckhpd %ymm1, %ymm1, %ymm3             #  2     0x5   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label            
  callq .move_r9b_to_byte_14_of_ymm1        #  4     0xe   5      OPC=callq_label            
  vunpckhps %xmm1, %xmm2, %xmm1             #  5     0x13  4      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhdq %xmm1, %xmm3                    #  6     0x17  4      OPC=punpckhdq_xmm_xmm      
  vunpcklps %xmm3, %xmm1, %xmm1             #  7     0x1b  4      OPC=vunpcklps_xmm_xmm_xmm  
  retq                                      #  8     0x1f  1      OPC=retq                   
                                                                                             
.size target, .-target
