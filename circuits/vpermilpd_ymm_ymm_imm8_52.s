  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vmovddup %ymm2, %ymm7          #  1     0    4      OPC=vmovddup_ymm_ymm       
  movaps %xmm7, %xmm2            #  2     0x4  3      OPC=movaps_xmm_xmm         
  vunpckhpd %ymm7, %ymm2, %ymm1  #  3     0x7  4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                           #  4     0xb  1      OPC=retq                   
                                                                                 
.size target, .-target
