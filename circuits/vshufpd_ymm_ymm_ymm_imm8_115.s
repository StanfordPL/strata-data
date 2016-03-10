  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpcklpd %ymm3, %ymm2, %ymm1  #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm  
  movaps %xmm3, %xmm1            #  2     0x4  3      OPC=movaps_xmm_xmm         
  movhlps %xmm2, %xmm1           #  3     0x7  3      OPC=movhlps_xmm_xmm        
  retq                           #  4     0xa  1      OPC=retq                   
                                                                                 
.size target, .-target
