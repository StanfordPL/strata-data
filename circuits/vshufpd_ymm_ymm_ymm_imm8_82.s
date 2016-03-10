  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  movapd %xmm3, %xmm7            #  1     0    4      OPC=movapd_xmm_xmm         
  maxss %xmm7, %xmm7             #  2     0x4  4      OPC=maxss_xmm_xmm          
  movhlps %xmm7, %xmm3           #  3     0x8  3      OPC=movhlps_xmm_xmm        
  vunpcklpd %ymm3, %ymm2, %ymm1  #  4     0xb  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                           #  5     0xf  1      OPC=retq                   
                                                                                 
.size target, .-target
