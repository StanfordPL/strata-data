  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm1  #  1     0    4      OPC=vunpckhpd_ymm_ymm_ymm  
  movddup %xmm2, %xmm14          #  2     0x4  5      OPC=movddup_xmm_xmm        
  unpckhpd %xmm14, %xmm1         #  3     0x9  5      OPC=unpckhpd_xmm_xmm       
  retq                           #  4     0xe  1      OPC=retq                   
                                                                                 
.size target, .-target
