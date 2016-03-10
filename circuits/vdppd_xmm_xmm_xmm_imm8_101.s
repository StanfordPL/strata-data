  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_64_xmm2_xmm10_xmm11           #  1     0     5      OPC=callq_label                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label                 
  vmovss %xmm2, %xmm2, %xmm2                    #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm          
  vfnmadd213pd %xmm10, %xmm2, %xmm3             #  4     0xe   5      OPC=vfnmadd213pd_xmm_xmm_xmm    
  vfmsubadd213pd %xmm3, %xmm10, %xmm4           #  5     0x13  5      OPC=vfmsubadd213pd_xmm_xmm_xmm  
  vunpckhpd %xmm10, %xmm4, %xmm1                #  6     0x18  5      OPC=vunpckhpd_xmm_xmm_xmm       
  retq                                          #  7     0x1d  1      OPC=retq                        
                                                                                                      
.size target, .-target
