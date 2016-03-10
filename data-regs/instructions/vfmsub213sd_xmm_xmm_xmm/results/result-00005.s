  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmsub132pd %xmm1, %xmm3, %xmm2  #  1     0    5      OPC=vfmsub132pd_xmm_xmm_xmm  
  vmovaps %ymm2, %ymm10            #  2     0x5  4      OPC=vmovaps_ymm_ymm          
  vmovsd %xmm10, %xmm1, %xmm1      #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm       
  retq                             #  4     0xe  1      OPC=retq                     
                                                                                     
.size target, .-target
