  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vfnmadd213pd %xmm2, %xmm6, %xmm4              #  2     0x5   5      OPC=vfnmadd213pd_xmm_xmm_xmm  
  vmovapd %ymm4, %ymm6                          #  3     0xa   4      OPC=vmovapd_ymm_ymm           
  vmovsd %xmm7, %xmm6, %xmm12                   #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm        
  unpckhps %xmm4, %xmm6                         #  5     0x12  3      OPC=unpckhps_xmm_xmm          
  vpor %ymm12, %ymm12, %ymm12                   #  6     0x15  5      OPC=vpor_ymm_ymm_ymm          
  vsubps %xmm12, %xmm4, %xmm1                   #  7     0x1a  5      OPC=vsubps_xmm_xmm_xmm        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x1f  5      OPC=callq_label               
  retq                                          #  9     0x24  1      OPC=retq                      
                                                                                                    
.size target, .-target
