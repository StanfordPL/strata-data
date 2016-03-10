  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vmovaps %xmm1, %xmm14               #  1     0     4      OPC=vmovaps_xmm_xmm          
  vfmsub132pd %xmm14, %xmm14, %xmm14  #  2     0x4   5      OPC=vfmsub132pd_xmm_xmm_xmm  
  vminpd %ymm14, %ymm14, %ymm15       #  3     0x9   5      OPC=vminpd_ymm_ymm_ymm       
  vandnpd %xmm15, %xmm14, %xmm0       #  4     0xe   5      OPC=vandnpd_xmm_xmm_xmm      
  cvtdq2pd %xmm0, %xmm1               #  5     0x13  4      OPC=cvtdq2pd_xmm_xmm         
  retq                                #  6     0x17  1      OPC=retq                     
                                                                                         
.size target, .-target
