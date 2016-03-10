  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vminss %xmm2, %xmm2, %xmm1          #  1     0     4      OPC=vminss_xmm_xmm_xmm     
  callq .move_byte_14_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label            
  callq .move_byte_15_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label            
  callq .move_r8b_to_byte_9_of_ymm1   #  4     0xe   5      OPC=callq_label            
  vmovsldup %ymm1, %ymm6              #  5     0x13  4      OPC=vmovsldup_ymm_ymm      
  vmaxpd %ymm6, %ymm6, %ymm0          #  6     0x17  4      OPC=vmaxpd_ymm_ymm_ymm     
  vunpckhps %xmm0, %xmm2, %xmm0       #  7     0x1b  4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm1, %xmm0, %xmm1          #  8     0x1f  4      OPC=vmovsd_xmm_xmm_xmm     
  callq .move_r9b_to_byte_12_of_ymm1  #  9     0x23  5      OPC=callq_label            
  retq                                #  10    0x28  1      OPC=retq                   
                                                                                       
.size target, .-target
