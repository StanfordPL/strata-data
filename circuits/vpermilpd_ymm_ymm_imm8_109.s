  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm1  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  movups %xmm2, %xmm0            #  2     0x4  3      OPC=movups_xmm_xmm         
  unpcklpd %xmm0, %xmm1          #  3     0x7  4      OPC=unpcklpd_xmm_xmm       
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
