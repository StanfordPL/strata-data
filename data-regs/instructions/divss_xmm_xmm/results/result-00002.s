  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  movlhps %xmm2, %xmm2                          #  1     0     3      OPC=movlhps_xmm_xmm          
  vmovapd %xmm1, %xmm5                          #  2     0x3   4      OPC=vmovapd_xmm_xmm          
  vmovaps %xmm1, %xmm15                         #  3     0x7   4      OPC=vmovaps_xmm_xmm          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0xb   5      OPC=callq_label              
  vmovsldup %xmm2, %xmm13                       #  5     0x10  4      OPC=vmovsldup_xmm_xmm        
  vfmsub132pd %ymm5, %ymm13, %ymm5              #  6     0x14  5      OPC=vfmsub132pd_ymm_ymm_ymm  
  vdivps %xmm5, %xmm15, %xmm13                  #  7     0x19  4      OPC=vdivps_xmm_xmm_xmm       
  movss %xmm13, %xmm1                           #  8     0x1d  5      OPC=movss_xmm_xmm            
  retq                                          #  9     0x22  1      OPC=retq                     
                                                                                                   
.size target, .-target
