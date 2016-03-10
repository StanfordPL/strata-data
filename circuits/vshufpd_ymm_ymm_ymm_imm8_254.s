  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %ymm3, %ymm2, %ymm7  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  movsd %xmm2, %xmm7             #  2     0x4  4      OPC=movsd_xmm_xmm          
  vorps %ymm7, %ymm7, %ymm1      #  3     0x8  4      OPC=vorps_ymm_ymm_ymm      
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
