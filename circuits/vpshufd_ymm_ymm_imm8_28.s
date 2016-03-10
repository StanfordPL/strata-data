  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovaps %ymm2, %ymm5                            #  1     0     4      OPC=vmovaps_ymm_ymm         
  vpmovsxwq %xmm2, %xmm2                          #  2     0x4   5      OPC=vpmovsxwq_xmm_xmm       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label             
  vandpd %xmm5, %xmm11, %xmm3                     #  4     0xe   4      OPC=vandpd_xmm_xmm_xmm      
  vunpckhps %ymm5, %ymm3, %ymm7                   #  5     0x12  4      OPC=vunpckhps_ymm_ymm_ymm   
  vunpckhpd %ymm3, %ymm7, %ymm8                   #  6     0x16  4      OPC=vunpckhpd_ymm_ymm_ymm   
  vunpcklps %ymm5, %ymm7, %ymm1                   #  7     0x1a  4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm1, %ymm5, %ymm1                  #  8     0x1e  4      OPC=vpunpckldq_ymm_ymm_ymm  
  vxorps %ymm8, %ymm1, %ymm1                      #  9     0x22  5      OPC=vxorps_ymm_ymm_ymm      
  retq                                            #  10    0x27  1      OPC=retq                    
                                                                                                    
.size target, .-target
