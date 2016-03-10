  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovups %xmm1, %xmm8             #  1     0     4      OPC=vmovups_xmm_xmm          
  vmovapd %xmm2, %xmm2             #  2     0x4   4      OPC=vmovapd_xmm_xmm          
  vfmsub213pd %xmm1, %xmm2, %xmm3  #  3     0x8   5      OPC=vfmsub213pd_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm8, %xmm1       #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm       
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
