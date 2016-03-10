  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmaxps %xmm1, %xmm1, %xmm9         #  1     0     4      OPC=vmaxps_xmm_xmm_xmm        
  vmovapd %xmm2, %xmm1               #  2     0x4   4      OPC=vmovapd_xmm_xmm           
  vmovdqu %xmm3, %xmm10              #  3     0x8   4      OPC=vmovdqu_xmm_xmm           
  vfnmsub132ps %ymm10, %ymm9, %ymm1  #  4     0xc   5      OPC=vfnmsub132ps_ymm_ymm_ymm  
  vmovapd %xmm1, %xmm1               #  5     0x11  4      OPC=vmovapd_xmm_xmm           
  retq                               #  6     0x15  1      OPC=retq                      
                                                                                         
.size target, .-target
