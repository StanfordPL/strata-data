  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movss %xmm3, %xmm2               #  1     0     4      OPC=movss_xmm_xmm            
  vfmadd132sd %xmm2, %xmm3, %xmm3  #  2     0x4   5      OPC=vfmadd132sd_xmm_xmm_xmm  
  vmovaps %ymm3, %ymm1             #  3     0x9   4      OPC=vmovaps_ymm_ymm          
  movsd %xmm2, %xmm1               #  4     0xd   4      OPC=movsd_xmm_xmm            
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
