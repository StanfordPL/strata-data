  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpaddq %xmm6, %xmm5, %xmm1                    #  2     0x5   4      OPC=vpaddq_xmm_xmm_xmm       
  vfmsub213ss %xmm1, %xmm2, %xmm1               #  3     0x9   5      OPC=vfmsub213ss_xmm_xmm_xmm  
  vmovsldup %xmm3, %xmm15                       #  4     0xe   4      OPC=vmovsldup_xmm_xmm        
  vunpckhps %ymm1, %ymm15, %ymm6                #  5     0x12  4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpcklqdq %xmm6, %xmm6, %xmm6               #  6     0x16  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1a  5      OPC=callq_label              
  retq                                          #  8     0x1f  1      OPC=retq                     
                                                                                                   
.size target, .-target
