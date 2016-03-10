  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  vmovss %xmm5, %xmm2, %xmm14                   #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm      
  vunpcklps %xmm14, %xmm1, %xmm10               #  3     0x9   5      OPC=vunpcklps_xmm_xmm_xmm   
  unpckhps %xmm1, %xmm10                        #  4     0xe   4      OPC=unpckhps_xmm_xmm        
  vpunpckhdq %ymm14, %ymm10, %ymm11             #  5     0x12  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1           #  6     0x17  5      OPC=callq_label             
  pand %xmm1, %xmm1                             #  7     0x1c  4      OPC=pand_xmm_xmm            
  retq                                          #  8     0x20  1      OPC=retq                    
                                                                                                  
.size target, .-target
