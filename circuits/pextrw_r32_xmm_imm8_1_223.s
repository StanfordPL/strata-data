  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vmovdqu %xmm1, %xmm14               #  1     0     4      OPC=vmovdqu_xmm_xmm        
  vxorps %ymm10, %ymm10, %ymm2        #  2     0x4   5      OPC=vxorps_ymm_ymm_ymm     
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label            
  vunpckhps %xmm14, %xmm14, %xmm1     #  4     0xe   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_byte_11_of_ymm1_to_r9b  #  5     0x13  5      OPC=callq_label            
  vmovmskpd %xmm2, %ebx               #  6     0x18  4      OPC=vmovmskpd_r32_xmm      
  callq .move_008_016_r8b_r9b_bx      #  7     0x1c  5      OPC=callq_label            
  retq                                #  8     0x21  1      OPC=retq                   
                                                                                       
.size target, .-target
