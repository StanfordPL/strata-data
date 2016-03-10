  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpcklpd %ymm3, %ymm2, %ymm1  #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm  
  movhlps %xmm2, %xmm3           #  2     0x4  3      OPC=movhlps_xmm_xmm        
  movapd %xmm3, %xmm1            #  3     0x7  4      OPC=movapd_xmm_xmm         
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
