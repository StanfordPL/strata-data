  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                        
.target:                               #        0     0      OPC=<label>                   
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vunpcklps %xmm11, %xmm2, %xmm0       #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm     
  vunpcklpd %ymm0, %ymm0, %ymm1        #  3     0xa   4      OPC=vunpcklpd_ymm_ymm_ymm     
  unpckhps %xmm3, %xmm11               #  4     0xe   4      OPC=unpckhps_xmm_xmm          
  punpckldq %xmm11, %xmm3              #  5     0x12  5      OPC=punpckldq_xmm_xmm         
  vfnmadd231sd %xmm2, %xmm10, %xmm1    #  6     0x17  5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  vmovhlps %xmm1, %xmm3, %xmm1         #  7     0x1c  4      OPC=vmovhlps_xmm_xmm_xmm      
  retq                                 #  8     0x20  1      OPC=retq                      
                                                                                           
.size target, .-target
