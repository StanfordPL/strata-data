  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vunpcklpd %xmm2, %xmm3, %xmm5      #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm    
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label              
  vpbroadcastq %xmm3, %xmm13         #  3     0x9   5      OPC=vpbroadcastq_xmm_xmm     
  unpckhps %xmm3, %xmm2              #  4     0xe   3      OPC=unpckhps_xmm_xmm         
  vunpckhps %xmm13, %xmm5, %xmm0     #  5     0x11  5      OPC=vunpckhps_xmm_xmm_xmm    
  vorpd %xmm2, %xmm2, %xmm12         #  6     0x16  4      OPC=vorpd_xmm_xmm_xmm        
  vunpcklpd %ymm12, %ymm13, %ymm6    #  7     0x1a  5      OPC=vunpcklpd_ymm_ymm_ymm    
  vfmsub213ss %xmm9, %xmm8, %xmm6    #  8     0x1f  5      OPC=vfmsub213ss_xmm_xmm_xmm  
  vpunpckhdq %xmm0, %xmm6, %xmm1     #  9     0x24  4      OPC=vpunpckhdq_xmm_xmm_xmm   
  retq                               #  10    0x28  1      OPC=retq                     
                                                                                        
.size target, .-target
