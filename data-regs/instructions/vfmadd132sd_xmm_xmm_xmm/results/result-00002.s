  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vfmadd231pd %xmm3, %xmm1, %xmm2  #  1     0     5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vmovupd %xmm1, %xmm8             #  2     0x5   4      OPC=vmovupd_xmm_xmm          
  vmovups %ymm8, %ymm1             #  3     0x9   5      OPC=vmovups_ymm_ymm          
  movsd %xmm2, %xmm1               #  4     0xe   4      OPC=movsd_xmm_xmm            
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
